#Requires -Version 7.0
<#
.SYNOPSIS
    Build and publish the vahdati.info Jekyll site.

.DESCRIPTION
    Jekyll builds source/ directly into a local "gh-pages" git worktree
    (.gh-pages) of this same repository, which is then committed and pushed.
    Finally the source branch is committed and pushed as a backup. No separate
    clone and no manual copying are needed.

    Files that are not produced by the build (e.g. leftovers from older
    deploys) are removed from gh-pages automatically, which is why CNAME now
    lives in source/ and is part of the build.

.EXAMPLE
    ./deploy.ps1
    ./deploy.ps1 -Message "Add new publication"
    ./deploy.ps1 -SkipBuild
#>
[CmdletBinding()]
param(
    [string]$Message = "Update website",
    [string]$Branch = "gh-pages",
    [string]$Remote = "origin",
    [switch]$SkipBuild
)

$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $false

$root      = $PSScriptRoot
$sourceDir = Join-Path $root 'source'
$worktree  = Join-Path $root '.gh-pages'

function Assert-ExitCode {
    param([string]$Step)
    if ($LASTEXITCODE -ne 0) { throw "$Step failed (exit code $LASTEXITCODE)." }
}

function Invoke-Git {
    param([string]$Repo, [string[]]$GitArgs)
    & git -C $Repo @GitArgs
    Assert-ExitCode "git $($GitArgs -join ' ')"
}

function Test-GitRef {
    param([string]$Ref)
    & git -C $root show-ref --verify --quiet $Ref
    return ($LASTEXITCODE -eq 0)
}

# 1. Create the gh-pages worktree on first run.
if (-not (Test-Path -LiteralPath (Join-Path $worktree '.git'))) {
    Write-Host "Creating $Branch worktree at $worktree ..."
    if (Test-GitRef "refs/heads/$Branch") {
        Invoke-Git $root @('worktree', 'add', '--force', $worktree, $Branch)
    } elseif (Test-GitRef "refs/remotes/$Remote/$Branch") {
        Invoke-Git $root @('worktree', 'add', '--force', '-B', $Branch, $worktree, "$Remote/$Branch")
    } else {
        throw "Neither local $Branch nor $Remote/$Branch exists. Create the branch first."
    }
}

# 2. Build straight into the worktree. Jekyll keeps .git by default.
if (-not $SkipBuild) {
    Write-Host "Building site into $worktree ..."
    Push-Location $sourceDir
    try {
        & bundle exec jekyll build --destination $worktree
        Assert-ExitCode 'Jekyll build'
    } finally {
        Pop-Location
    }
}

# 3. Publish gh-pages.
Invoke-Git $worktree @('add', '-A')
if (& git -C $worktree status --porcelain) {
    Invoke-Git $worktree @('commit', '-m', $Message)
    Invoke-Git $worktree @('push', $Remote, $Branch)
    Write-Host "Published to $Branch."
} else {
    Write-Host "$Branch already up to date; nothing to publish."
}

# 4. Back up the source branch.
Invoke-Git $root @('add', '-A')
if (& git -C $root status --porcelain) {
    Invoke-Git $root @('commit', '-m', $Message)
    $current = (& git -C $root rev-parse --abbrev-ref HEAD).Trim()
    Invoke-Git $root @('push', $Remote, $current)
    Write-Host "Backed up source to $current."
} else {
    Write-Host "Source already up to date; nothing to commit."
}
