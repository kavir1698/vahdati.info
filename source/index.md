---
layout: english
description: "Farhad Vahdati is a Senior Data Scientist working across machine learning, LLM applications, geospatial analytics, and complex-systems modeling."
---

<section class="hero-section">
  <div class="hero-content">
    <div class="hero-image fade-in">
      <img src="{{site.url}}{{site.baseurl}}/assets/img/farhadfarrox.png" alt="Farhad Vahdati" />
    </div>
    <div class="hero-text fade-in">
      <h1>Farhad Vahdati</h1>
      <p class="subtitle">Senior Data Scientist · AI &amp; Complex Systems</p>
      <p class="description">
        I design reliable data products and predictive models for complex, high-stakes problems. My work combines statistical modeling, machine learning, LLM-powered applications, geospatial analysis, and high-performance simulation.
      </p>
      <!-- <p class="identity-note">Published as <a href="{{site.url}}{{site.baseurl}}/publications">Ali R. Vahdati</a>.</p> -->
      <p class="contact-line">Zürich, Switzerland · <a class="obfuscated-email" href="#" data-user="farhad" data-domain="vahdati.info" data-show-address>farhad [at] vahdati.info</a></p>
      <div class="hero-actions">
        <a href="{{site.url}}{{site.baseurl}}/projects" class="btn">View Projects</a>
        <a href="{{site.url}}{{site.baseurl}}/experience" class="btn btn-outline">View Experience</a>
      </div>
    </div>
  </div>
</section>

<section class="container">
  <div class="card work-overview">
    <h2>What I do</h2>
    <div class="pillar-grid">
      <div>
        <h3>Data Science &amp; ML</h3>
        <p>Statistical modeling, experimental design, causal inference, optimization, metric development, and geospatial analytics.</p>
      </div>
      <div>
        <h3>LLM &amp; AI Engineering</h3>
        <p>RAG systems, prompt engineering, structured outputs, and assistants that connect models to useful workflows.</p>
      </div>
      <div>
        <h3>Complex Systems</h3>
        <p>Agent-based models and reproducible simulations that make difficult, sparse-data questions testable.</p>
      </div>
    </div>
  </div>
</section>

<!-- <section class="container">
  <div class="highlight-grid">
    <div class="highlight"><strong>10x</strong><span>model performance improvement</span></div>
    <div class="highlight"><strong>1,000+</strong><span>compute nodes scaled</span></div>
    <div class="highlight"><strong>90%</strong><span>test coverage on a modeling framework</span></div>
    <div class="highlight"><strong>40</strong><span>European research institutes surveyed</span></div>
  </div>
</section> -->

<style>
.hero-actions {
  margin-top: 2rem;
  display: flex;
  gap: 1rem;
  flex-wrap: wrap;
}

.contact-line {
  font-size: 0.95rem;
  margin-bottom: 0.5rem;
}

.work-overview {
  margin-top: 2rem;
}

.pillar-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 1.5rem;
}

.pillar-grid h3 {
  font-size: 1.15rem;
  color: var(--primary-color);
}

@media (max-width: 768px) {
  .hero-actions {
    justify-content: center;
  }

  .pillar-grid {
    grid-template-columns: 1fr;
  }
}
</style>
