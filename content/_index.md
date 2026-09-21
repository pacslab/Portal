---
# Leave the homepage title empty to use the site title
title:
date: 2022-10-24
type: landing

sections:
  - block: markdown
    id: hero
    content:
      title: ''
      text: |
        <div class="pacs-hero">
          <div class="pacs-hero-logo">
            <img src="/media/pacs-logo.png" alt="PACS Lab logo" loading="eager" />
          </div>
          <div class="pacs-hero-text">
            <h1>Performant and Available Computing Systems Lab</h1>
            <p>Welcome to the homepage of the <strong>Performant and Available Computing Systems (PACS) Lab</strong> at York University, led by <a href="/content/authors/khazaei/_index.md">Dr. Hamzeh Khazaei</a>. We analyze, model, design, and build <strong>large-scale computing systems</strong> focused on <strong>performance</strong> and <strong>availability</strong>. The PACS Lab is part of the Electrical Engineering and Computer Science Department within the Lassonde School of Engineering, located in the vibrant, multicultural city of Toronto.</p>
            <p>We are excited to welcome new members at all academic stages. To join, please visit our <a href="./prospective/">Join Us!</a> page for all the details you need to get started.</p>  
          </div>
        </div>
    design:
      columns: '1'
      spacing:
        padding: ['3rem', '0', '3rem', '0']

  - block: collection
    content:
      title: Latest News
      subtitle:
      text:
      count: 6
      filters:
        author: ''
        category: ''
        exclude_featured: false
        publication_type: ''
        tag: ''
      offset: 0
      order: desc
      page_type: post
    design:
      view: card
      columns: '2'

  - block: collection
    content:
      title: Recent Publications
      text: ""
      count: 5
      filters:
        folders:
          - publication
        publication_type: ''
      order: desc
    design:
      view: citation
      columns: '1'

  - block: markdown
    content:
      title:
      subtitle:
      text: |
        {{% cta cta_link="./research/" cta_text="Explore our research areas →" %}}
    design:
      columns: '1'
---
