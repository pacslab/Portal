---
# Leave the homepage title empty to use the site title
title:
date: 2022-10-24
type: landing

sections:
  - block: hero
    content:
      title: |
        Performant and Available
        Computing Systems Lab
      image:
        filename: welcome.jpg
      text: |
        <br>

        We analyze, model, design, and build **large-scale computing systems**
        focused on **performance** and **availability** at York University's
        Lassonde School of Engineering.
      cta:
        label: Meet the Team
        url: ./people/
        icon_pack: fas
        icon: users
      cta_alt:
        label: Join the Lab
        url: ./prospective/
    design:
      background:
        gradient_start: '#0b0c11'
        gradient_end: '#11131a'
        text_color_light: true

  - block: markdown
    content:
      title: About the Lab
      subtitle: ''
      text: |
        Welcome to the **Performant and Available Computing Systems (PACS) Lab**
        at York University. In the PACS lab, we analyze, model, design, and build
        large-scale computing systems focused on performance and availability.
        The PACS lab is part of the Electrical Engineering and Computer Science
        Department within the Lassonde School of Engineering at York University,
        located in the vibrant, multicultural city of Toronto.

        We are excited to welcome new members to the PACS lab. To join, please
        visit our [Prospective Page](./prospective/), which contains all the
        details you need to get started on this rewarding research journey.
    design:
      columns: '1'

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
