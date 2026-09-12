---
layout: page-en
title: Projects
permalink: /projects/
description: "Selected data science, AI, geospatial, and research projects by Farhad Vahdati."
---

## Products

### [Helvetia Analytics](https://helvetiaanalytics.ch)
**Co-Founder & Analyst · August 2023–Present**

A research and data consultancy delivering data analysis, predictive modeling, scientific writing, and specialized training for organizations working with complex evidence and domain-specific questions.

### [CV Genie](https://getcvgenie.com)
**Creator & Full-Stack Developer · June 2026**

An AI-powered CV optimization platform that turns raw professional information into job-tailored PDF CVs.

- Designed the complete pipeline from file upload and LLM processing to RenderCV/Typst PDF generation and subscription billing.
- Built prompt systems for CV generation, job-fit analysis, and cover-letter writing.
- Dockerized and deployed seven services, including FastAPI, Next.js, Supabase Auth, PostgreSQL, Kong, and Caddy, with automatic TLS.
- Integrated Lemon Squeezy subscription payments with webhook-based account upgrades.

## Public-Interest Systems

### [Iran Forest Fire Detection](https://github.com/kavir1698/iran-fire-detection)
**Creator & Developer · July 2026**

An automated early-warning system for Iran's Hyrcanian, Zagros, and Arasbaran forests.

- Fuses NASA FIRMS VIIRS hotspots from three satellites with Sentinel-2 imagery and Open-Meteo weather data on a 30-minute schedule.
- Combines fire radiative power, DBSCAN spatial clustering, multi-sensor confirmation, and drought/wind conditions into a composite risk score.
- Uses YOLOv8 smoke detection, Iran-specific forest-zone and flare-exclusion logic, province reverse-geocoding, Telegram alerts, and a Streamlit/Leaflet dashboard.
- Runs at $0/month using free data sources.

### Iran Crime Observatory
**Creator & Developer · August 2026–Present**

A public-interest platform for mapping reported crime across Iran and surfacing statistics that are currently unavailable to the public.

- Extracts structured crime reports from news sources through a web-scraping pipeline.
- Combines scraped records with crowdsourced first-hand reports and a validation flow.
- Uses a geospatial database and interactive map to show crime-type distributions across regions and cities.
- Implements deduplication and verification logic for both scraped and user-submitted records.

## Research

### A Comprehensive Author Impact Metric — Beyond the h-index
**Researcher & Developer · May 2026–Present**

A bibliometric metric designed to compare research impact more fairly across fields and career stages.

- Weights citation quality using PageRank-style influence scores.
- Assigns fractional credit based on author contribution rather than raw author counts.
- Normalizes for field, publication year, and citation age.
- Adds career-stage adjustment for fairer early-career comparisons.
- Implementation is approximately 80% complete, with benchmarking against the h-index and related metrics underway.
