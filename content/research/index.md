---
title: Research
date: 2022-10-24
type: landing

sections:
  - block: markdown
    content:
      title: Research Areas
      subtitle: ''
      text: |
        Our research focuses on advancing computing systems by enhancing
        **performance, availability, reliability, cost-efficiency, power
        consumption, and runtime operations**. Our approach combines
        mathematical modelling with large-scale cloud experimentation, and we
        frequently develop proofs-of-concept and prototypes.
    design:
      columns: '1'

  - block: markdown
    content:
      title:
      text: |
        {{< spoiler text="🖥️ Serverless Computing" >}}
        Performance modelling, simulation, and optimization of serverless (FaaS)
        platforms — including cold-start analysis, autoscaling, function
        placement, and cost/performance trade-offs.
        {{< /spoiler >}}

        {{< spoiler text="🤖 Machine Learning Systems" >}}
        Predicting deep neural network training time, convergence prediction
        across architectures, SLA-aware inference serving, and ML-based
        autoscaling for cloud applications.
        {{< /spoiler >}}

        {{< spoiler text="🧩 Microservice Platforms" >}}
        Performance modelling of microservice platforms, software diversity and
        multi-versioning to engineer reliable and performant systems, and
        efficient provisioning of microservices.
        {{< /spoiler >}}

        {{< spoiler text="🔗 Cyber-Physical Systems" >}}
        Self-managing IoT platforms, end-to-end IoT application management,
        intrusion detection for smart grids, and big-data analytics for smart
        transportation.
        {{< /spoiler >}}

        {{< spoiler text="☁️ Cloud Software Systems" >}}
        Adaptive and self-managing cloud applications, elastic containerized
        applications for DevOps, autoscaling and monitoring as a service, and
        analytical performance/availability models of cloud data centers.
        {{< /spoiler >}}

        {{< spoiler text="⚙️ Operating Systems" >}}
        Runtime operations, resource management, and controller-based
        optimization (e.g., adaptive PID controllers) for containerized
        software systems.
        {{< /spoiler >}}

        {{< spoiler text="⛓️ Distributed Ledgers" >}}
        Performance evaluation of blockchain systems, DAG-based distributed
        ledgers for smart communities, blockchain-based serverless platforms,
        and peer-to-peer energy trading frameworks.
        {{< /spoiler >}}
    design:
      columns: '1'

  - block: collection
    content:
      title: Related Publications
      text: ''
      count: 6
      filters:
        folders:
          - publication
      order: desc
    design:
      view: citation
      columns: '1'
---
