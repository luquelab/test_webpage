#!/usr/bin/env bash
set -euo pipefail

mkdir -p _news

emit() {
  local fn="$1"; shift
  cat > "_news/$fn" <<'YAML'
# replaced by caller
YAML
  # Now replace placeholder with provided content
  sed -i '' -e '1,$d' "_news/$fn" 2>/dev/null || true
  printf "%s" "$*" > "_news/$fn"
  echo "Wrote _news/$fn"
}

# 2025-08-29 — Small viruses reveal ...
emit "2025-08-29-small-viruses-reveal-bidirectional-evolution.md" "$(cat <<'EOF'
---
title: "Small viruses reveal bidirectional evolution between HK97-fold viruses and encapsulins via procapsids"
date: 2025-08-29
image: /assets/images/news/Small_viruses_reveal_bidir_evo_via_procapsids_QRCODE_Biorxiv.png
image_width: 180
summary: >
  First author **Abelardo Aguilar**, with **Antoni Luque** (PI) and **Omer Nadel**, report small uncultured
  HK97-fold viruses lacking portal/tail genes that resemble encapsulins and procapsids. Structural phylogenetics
  supports bidirectional evolution via lysogeny-enabled transitions. We propose procapsids as the ancestral HK97 shell
  and a bridge between modern viruses and encapsulins. Manuscript under **peer review at Nature Communications**.
links:
  primary: https://www.biorxiv.org/content/10.1101/2025.06.18.659913v3
  note: "Manuscript under peer review at Nature Communications"
team_links:
  - text: "Abelardo Aguilar"
    href: "/pages/team/#abelardo-aguilar"
  - text: "Antoni Luque"
    href: "/pages/team/#antoni-luque"
  - text: "Omer Nadel"
    href: "/pages/team/#omer-nadel"
---
EOF
)"

# 2025-03-25 — Graduate & Postdoc Research Symposium (fix image path)
emit "2025-03-25-graduate-and-post-doctoral-research-symposium.md" "$(cat <<'EOF'
---
title: "Graduate and Post-doctoral Research Symposium"
date: 2025-03-25
image: /assets/images/news/2025-03-25_research_symposium.jpg
image_width: 200
summary: >
  **Abelardo Aguilar** (poster), **Omer Nadel** (talk), and **Michael Cioffi** (talk) represented the lab at UM’s
  Graduate Student & Postdoctoral Research Symposium. Topics spanned procapsid evolution, reconstruction of small capsids,
  and T=3 capsid simulations.
team_links:
  - text: "Abelardo Aguilar"
    href: "/pages/team/#abelardo-aguilar"
  - text: "Omer Nadel"
    href: "/pages/team/#omer-nadel"
  - text: "Michael Cioffi"
    href: "/pages/team/#michael-cioffi"
---
EOF
)"

# 2025-03-20 — BioFiViNet
emit "2025-03-20-spanish-network-of-physical-virology-biofivinet.md" "$(cat <<'EOF'
---
title: "Spanish Network of Physical Virology (BioFiViNet)"
date: 2025-03-20
image: /assets/images/news/2025-03-21_BioFiNet_memoire.jpeg
image_width: 400
summary: >
  PI **Antoni Luque** delivered the opening plenary at the VII BioFiViNet meeting, a network he helped establish in 2010
  during his PhD with Prof. David Reguera at the University of Barcelona.
team_links:
  - text: "Antoni Luque"
    href: "/pages/team/#antoni-luque"
links:
  primary: https://sites.google.com/view/guzmanresearch/physvirspain
---
EOF
)"

# 2025-03-16 — Technion invited talk
emit "2025-03-16-invited-talk-technion.md" "$(cat <<'EOF'
---
title: "Invited talk at Technion – Israel Institute of Technology"
date: 2025-03-16
image: /assets/images/news/2025-03-16_TIIT_OMER.png
image_width: 300
summary: >
  **Omer Nadel** presented Luque Lab research at Oded Béjà’s lab, sharing results on miniphage expression at SDSU and
  future directions for small-virus discovery.
team_links:
  - text: "Omer Nadel"
    href: "/pages/team/#omer-nadel"
links:
  primary: https://beja.net.technion.ac.il/
---
EOF
)"

# 2025-03-13 — Comp Bio Focus Area Retreat
emit "2025-03-13-computational-biology-focus-area-retreat.md" "$(cat <<'EOF'
---
title: "Computational Biology Focus Area Retreat"
date: 2025-03-13
image: /assets/images/news/2025-03-13_computational_biology_focus_area_retreat.png
image_width: 200
summary: >
  **Antoni Luque** presented lab efforts in uncultured capsid simulations (**Michael Cioffi**), viral evolution
  (**Abelardo Aguilar**), and larger AAV designs for therapeutics (**Md Imran Noor**).
team_links:
  - text: "Antoni Luque"
    href: "/pages/team/#antoni-luque"
  - text: "Michael Cioffi"
    href: "/pages/team/#michael-cioffi"
  - text: "Abelardo Aguilar"
    href: "/pages/team/#abelardo-aguilar"
  - text: "Md Imran Noor"
    href: "/pages/team/#md-imran-noor"
---
EOF
)"

# 2025-03-06 — U-Link Predoc Proposals
emit "2025-03-06-u-link-predoctoral-fellowship-proposals.md" "$(cat <<'EOF'
---
title: "U-Link Predoctoral Fellowship Proposals"
date: 2025-03-06
image: /assets/images/news/2025-03-06_u-link_proposals.png
image_width: 300
summary: >
  **Abelardo Aguilar** proposed research on HK97 procapsid biochemical functions via comparative genomics and modeling;
  **Md Imran Noor** proposed to engineer larger AAV capsids for gene therapy and vaccines.
team_links:
  - text: "Abelardo Aguilar"
    href: "/pages/team/#abelardo-aguilar"
  - text: "Md Imran Noor"
    href: "/pages/team/#md-imran-noor"
links:
  primary: https://ulink.miami.edu/projects/u-link-predoctoral-fellowship/index.html
---
EOF
)"

# 2025-03-05 — Career development guest speaker
emit "2025-03-05-guest-speaker-career-development.md" "$(cat <<'EOF'
---
title: "Guest Speaker for Career Development Presentation"
date: 2025-03-05
image: /assets/images/news/2025-03-05_bil_299_seminar_group.jpeg
image_width: 150
summary: >
  **Lucas Carbajal** shared his path from recent graduate to Research Associate in BIL 299’s career development seminar.
team_links:
  - text: "Lucas Carbajal"
    href: "/pages/team/#lucas-carbajal"
---
EOF
)"

# 2024-10-04 — Student Research Symposium (Envision)
emit "2024-10-04-student-research-symposium-envision.md" "$(cat <<'EOF'
---
title: "Student Research Symposium (Envision)"
date: 2024-10-04
image: /assets/images/news/2024-10-4_student_symposium.jpeg
image_width: 100
summary: >
  **Jose-Bernard Sedalo** presented on identifying disassembly units in viral capsids and won third place (STEM).
team_links:
  - text: "Jose-Bernard Sedalo"
    href: "/pages/team/#jose-bernard-sedalo"
---
EOF
)"

# 2023-12-28 — Website migrated to GitHub
emit "2023-12-28-website-migrates-to-github.md" "$(cat <<'EOF'
---
title: "The Luque lab migrates its website to GitHub"
date: 2023-12-28
image: /assets/images/news/2023-12-28_github-mark.svg
summary: >
  We moved the lab website to GitHub Pages using the **Just the Docs** Jekyll theme, with all content in the
  [luquelab/website](https://github.com/luquelab/website) repository.
links:
  primary: https://luquelab.github.io/website
---
EOF
)"

# 2023-12-19 — pyCapsid in Bioinformatics
emit "2023-12-19-pycapsid-in-bioinformatics.md" "$(cat <<'EOF'
---
title: "Publication of pyCapsid in Bioinformatics"
date: 2023-12-19
image: /assets/images/news/2023-12-19_Bioinformatics.jpeg
summary: >
  **Colin Brown**, **Anu Agarwal**, and **Antoni Luque** published **pyCapsid** in *Bioinformatics*. Tutorials and
  docs online; package available via Colab, PIP, and Conda.
links:
  primary: https://doi.org/10.1093/bioinformatics/btad761
---
EOF
)"

# 2023-08-15 — Lab moves to Miami
emit "2023-08-15-the-luque-lab-moves-to-miami.md" "$(cat <<'EOF'
---
title: "The Luque lab moves to Miami"
date: 2023-08-15
image: /assets/images/news/3_Invited_seminar_at_um_september_21_2022.png
summary: >
  We officially joined the **Department of Biology** at the **University of Miami**, opening new opportunities for the
  lab’s research and education mission.
links:
  primary: https://biology.as.miami.edu/people/meet-our-new-faculty/index.html
---
EOF
)"

# 2023-04-26 — Outstanding scholar-athlete award
emit "2023-04-26-outstanding-scholar-athlete-award.md" "$(cat <<'EOF'
---
title: "Outstanding scholar-athlete award"
date: 2023-04-26
image: /assets/images/news/outstanding_scholar_athlete_award_april_11_2023.jpg
image_width: 150
summary: >
  **Caitlin Bartels** won SDSU Sports Clubs’ Outstanding Scholar Athlete Award, recognizing excellence in sport and academics.
team_links:
  - text: "Caitlin Bartels"
    href: "/pages/team/#caitlin-bartels"
links:
  primary: https://arc.sdsu.edu/sportclubs
---
EOF
)"

# 2023-04-21 — Promise & Pitfalls of Prophages
emit "2023-04-21-the-promise-and-pitfalls-of-prophages.md" "$(cat <<'EOF'
---
title: "The Promise and Pitfalls of Prophages"
date: 2023-04-21
image: /assets/images/news/1_new_computational_tool_for_capsids.png
image_width: 120
summary: >
  **Antoni Luque** contributed to a large-scale prophage analysis (bioRxiv). The work highlights opportunities and caveats
  in prophage discovery and interpretation.
links:
  primary: https://doi.org/10.1101/2023.04.20.537752
---
EOF
)"

# 2023-04-11 — Viral predation pressure on coral reefs
emit "2023-04-11-viral-predation-pressure-on-coral-reefs.md" "$(cat <<'EOF'
---
title: "Viral predation pressure on coral reefs"
date: 2023-04-11
image: /assets/images/news/viral_prediction_pressure_on_coral_reefs.png
image_width: 150
summary: >
  Project led by **Antoni Luque** published in *BMC Biology* quantifies viral predation pressure on coral reefs.
links:
  primary: https://doi.org/10.1186/s12915-023-01571-9
---
EOF
)"

# 2023-03-01 — New computational tool for capsids (bioRxiv preprint)
emit "2023-03-01-new-computational-tool-for-capsids.md" "$(cat <<'EOF'
---
title: "New computational tool for capsids"
date: 2023-03-01
image: /assets/images/news/1_new_computational_tool_for_capsids.png
summary: >
  Masters student **Colin Brown** released **pyCapsid** on bioRxiv, identifying quasi-rigid domains and disassembly
  units in protein shells.
links:
  primary: https://www.biorxiv.org/content/10.1101/2023.02.27.529640v1
---
EOF
)"

# 2022-10-21 — NSF GRFP application
emit "2022-10-21-application-submitted-to-nsf-grfp.md" "$(cat <<'EOF'
---
title: "Application submitted to NSF GRFP"
date: 2022-10-21
image: /assets/images/news/2_application_submitted_to_nsfoctober_21_2022.png
summary: >
  Masters student **Aurora Vogel** submitted an application to the NSF Graduate Research Fellowship Program (GRFP).
links:
  primary: https://www.nsfgrfp.org
---
EOF
)"

# 2022-09-21 — Invited seminar at UM
emit "2022-09-21-invited-seminar-at-um.md" "$(cat <<'EOF'
---
title: "Invited seminar at UM"
date: 2022-09-21
image: /assets/images/news/3_Invited_seminar_at_um_september_21_2022.png
summary: >
  **Antoni Luque** spoke in the Fall 2022 Department of Physics seminar series at the University of Miami.
---
EOF
)"

# 2022-09-14 — Invited seminar at SDSU
emit "2022-09-14-invited-seminar-at-sdsu.md" "$(cat <<'EOF'
---
title: "Invited seminar at SDSU"
date: 2022-09-14
image: /assets/images/news/4_invited_seminar_sdsu_september_14_22.jpeg
summary: >
  Masters student **Aurora Vogel** presented progress on a geometric framework for viral architectures.
links:
  primary: https://cdoneill.sdsu.edu/sgpsrs/
---
EOF
)"

# 2022-08-29 — Invited seminar at UM (Department of Biology series)
emit "2022-08-29-invited-seminar-at-um-biology.md" "$(cat <<'EOF'
---
title: "Invited seminar at UM"
date: 2022-08-29
image: /assets/images/news/3_Invited_seminar_at_um_september_21_2022.png
summary: >
  **Antoni Luque** opened the Fall 2022 Department of Biology seminar series at the University of Miami.
links:
  primary: https://biology.as.miami.edu/about-the-department/seminars/index.html
---
EOF
)"

# 2022-08-17 — Invited talk at FAME (Flinders University)
emit "2022-08-17-invited-talk-at-fame-flinders.md" "$(cat <<'EOF'
---
title: "Invited talk at FAME, Flinders University, Australia"
date: 2022-08-17
image: /assets/images/news/5_fame_aug_17_22.png
summary: >
  **Antoni Luque** presented progress on predicting viral capsids from metagenomes at Flinders University (Adelaide).
links:
  primary: https://fame.flinders.edu.au/
---
EOF
)"

# 2022-07-20 — Poster contributions to VoM
emit "2022-07-20-poster-contributions-virus-of-microbes.md" "$(cat <<'EOF'
---
title: "Poster contributions to the Virus of Microbes meeting"
date: 2022-07-20
image: /assets/images/news/6_poster_contributions_to_the_virus_of_microbes_meeting_july_20_2022.jpeg
summary: >
  **Sergio Cobo-López** presented transient-dynamics work; **Antoni Luque** presented progress on predicting capsid architectures.
links:
  primary: https://www.pprpffa.org/
---
EOF
)"

# 2022-06-27 — FASEB Virus Structure & Assembly Conference
emit "2022-06-27-talk-contribution-virus-structure-and-assembly.md" "$(cat <<'EOF'
---
title: "Talk contribution to the Virus Structure and Assembly Conference"
date: 2022-06-27
image: /assets/images/news/7_talk_contribution_to_the_virus_structure_and_assembly_conference_june_27_2022.jpeg
summary: >
  **Antoni Luque** presented genome-to-architecture predictions; included results from **Diana Y. Lee** (CSBJ).
links:
  primary: https://www.faseb.org/meetings-and-events/src-events/the-virus-structure-and-assembly-conference
---
EOF
)"

# 2022-06-10 — El Colegio Nacional (Mexico City)
emit "2022-06-10-invited-talk-el-colegio-nacional.md" "$(cat <<'EOF'
---
title: "Invited talk at the evolution series of El Colegio Nacional in Mexico City"
date: 2022-06-10
image: /assets/images/news/8_invited_talk_at_the_evolution_series_of_el_colegio_nacional_in_mexico_cityjune_10_2022.jpg
summary: >
  Spanish talk “En busca de los virus perdidos” by **Antoni Luque**; broadcast widely and followed by a press release.
links:
  primary: https://colnal.mx/agenda/en-busca-de-los-virus-perdidos/
---
EOF
)"

# 2022-03-23 — International Virus Bioinformatics Meeting 2022
emit "2022-03-23-international-virus-bioinformatics-meeting-2022.md" "$(cat <<'EOF'
---
title: "International Virus Bioinformatics Meeting 2022"
date: 2022-03-23
image: /assets/images/news/9_internationalvirus_bioinformatics_meeting2022march_23_2022.png
summary: >
  We presented metagenomic capsid-architecture prediction; extended summary appears in the *Viruses* conference report.
links:
  primary: https://evbc.uni-jena.de/events/vibiom2022/
---
EOF
)"

# 2022-03-09 — UC Merced seminar
emit "2022-03-09-invited-talk-uc-merced.md" "$(cat <<'EOF'
---
title: "Invited talk at UC Merced"
date: 2022-03-09
image: /assets/images/news/10_ucmerced_03_09_22.png
summary: >
  **Antoni Luque** presented “Bridging the biophysics and evolution of viruses” at UC Merced.
links:
  primary: https://appliedmath.ucmerced.edu/events/mathematical-biology-seminar-17
---
EOF
)"

# 2022-03-04 — SRS 2022 (Caitlin)
emit "2022-03-04-student-research-symposium-2022-bartels.md" "$(cat <<'EOF'
---
title: "Student Research Symposium (SRS) 2022"
date: 2022-03-04
image: /assets/images/news/11_student_research_symposium2022_mar_4_2022.jpg
summary: >
  **Caitlin Bartels** presented “Study of the 3D Molecular Structure of Viral Capsid Building Blocks.”
team_links:
  - text: "Caitlin Bartels"
    href: "/pages/team/#caitlin-bartels"
links:
  primary: https://research.sdsu.edu/sdsu_student_symposium
---
EOF
)"

# 2022-03-04 — SRS 2022 (Colin)
emit "2022-03-04-student-research-symposium-2022-brown.md" "$(cat <<'EOF'
---
title: "Student Research Symposium (SRS) 2022"
date: 2022-03-04
image: /assets/images/news/12_student_research_symposium2022_mar_4_2022.jpg
summary: >
  **Colin Brown** presented “Classifying Icosahedral Capsids via Quasi-Rigid Domain Subdivision.”
links:
  primary: https://research.sdsu.edu/sdsu_student_symposium
---
EOF
)"

# 2022-02-11 — CSRC colloquium
emit "2022-02-11-csrc-colloquium.md" "$(cat <<'EOF'
---
title: "CSRC colloquium"
date: 2022-02-11
image: /assets/images/news/13_csrccolloquium.PNG
summary: >
  **Antoni Luque** presented “Bridging the Biophysics and Evolution of Viruses” at the CSRC colloquium (SDSU).
links:
  primary: https://www.youtube.com/watch?v=l1ayjAqvY3w
---
EOF
)"

# 2022-02-11 — Math is magical
emit "2022-02-11-math-is-magical.md" "$(cat <<'EOF'
---
title: "Math is magical"
date: 2022-02-11
image: /assets/images/news/14_d_lee.png
summary: >
  Feature on **Diana Lee’s** work linking genome features and capsid shapes using random forests.
links:
  primary: https://sciences.sdsu.edu/math-is-magical/
---
EOF
)"

# 2021-12-17 — Alumni capstone project (fix broken filename)
emit "2021-12-17-alumni-publish-capstone-project-mucus-diffusion.md" "$(cat <<'EOF'
---
title: "Alumni publish capstone project findings on particle diffusion in mucus"
date: 2021-12-17
image: /assets/images/news/15_alumni_publish_capstone_project_findings_on_particle_diffusion_in_mucus_dec_17_2021.jpg
summary: >
  **Antonio Cobarrubia’s** senior thesis (with Jarod Tall & Austin Crispin-Smith) compared 100+ experiments on particle
  diffusion in mucus and proposed a framework for anomalous diffusion (*Frontiers in Physics*).
links:
  primary: https://physics.sdsu.edu/alumni-publish-capstone-project-findings-on-particle-flow-in-mucus/
---
EOF
)"

# 2021-12-13 — Are you new here?
emit "2021-12-13-are-you-new-here-tracing-the-origin-of-viruses.md" "$(cat <<'EOF'
---
title: "Are you new here? Tracing the origin of viruses"
date: 2021-12-13
image: /assets/images/news/16_Areyounewhere_tracing_the_originof_virusesdec_13_2021.png
summary: >
  V.I.I. collaboration explores whether some viruses arise de novo with Moore Foundation support; overview article from SDSU.
links:
  primary: https://newscenter.sdsu.edu/sdsu_newscenter/news_story.aspx?sid=78624
---
EOF
)"

# 2021-11-12 — Margarita Salas fellowship
emit "2021-11-12-postdoc-awarded-margarita-salas-fellowship.md" "$(cat <<'EOF'
---
title: "Postdoctoral researcher awarded fellowship Margarita Salas"
date: 2021-11-12
image: /assets/images/news/17_sergiocobo.jpg
summary: >
  **Sergio Cobo López** received the Margarita Salas fellowship to pursue phage–bacterial ecology and complex systems
  across SDSU and URV (Sees:lab).
links:
  primary: https://scholar.google.com/citations?hl=en&user=m6m1HV4AAAAJ
---
EOF
)"

# 2020-12-21 — SDSU Research Highlights
emit "2020-12-21-contribution-to-sdsu-research-highlights.md" "$(cat <<'EOF'
---
title: "Contribution to the SDSU Research Highlights"
date: 2020-12-21
image: /assets/images/news/18_selectedinthe_san_diego_state_research_highlights201920dec21_2020.png
summary: >
  Lab work on viral capsid architecture featured in SDSU’s 2019–20 Research Highlights; includes *Nat. Comm.* framework
  and NSF Mathematical Biology award.
links:
  primary: https://research.sdsu.edu/2020_research_highlights/luque
---
EOF
)"

echo "Done. Verify on /pages/news/ after commit."
