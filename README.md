# JEB commentary database

This repository contains code and data needed to reproduce the figures in the article:

**Schwanz et al.** Best practices for building and curating databases for comparative analyses (in submission) *Journal of Experimental Biology*

Manuscript will be submitted to the Journal of Experimental Biology's special issue "*Building New Paradigms in Comparative Physiology and Biomechanics*".

**Raw data**
- JEB_data.csv - JEB meta-data of quantitative and comparative papers from six specialist journals (2014-2021) used for figure production.
- Noble_artcles.csv - Meta-data of meta-analysis papers published from the literature, extracted by [Dan Noble](https://github.com/daniel1noble) (daniel.noble@anu.edu.au).

**R code**
- JEB_commentary_figure.R - Data cleaning, and figure production.

**Figure output**
- Fig 1 - Database development flowchart (Adobe Illustrator).
- Fig 2 - Publication year (R/Adobe Illustrator).
- Fig 3 - Database structure (Powerpoint).

## Abstract
To include

## Meta-data
Number of papers published yearly (Jan 2014 - July 2021), grouped by 5 categories: (1) meta-analyses, (2) comparative literature reviews, (3) systematic reviews, (4) comparative data articles, and (5) phylogenetic comparative articles. All categories involve collecting data from the literature or existing databases. Description for each category as below:

(1) **meta-analyses** – Studies with formal statistical analysis and conducted systematic search following PRISMA or description of search criteria;

(2) **comparative literature reviews** – Reviews with no formal analysis and no systematic search criteria (e.g., PRISMA, search criteria);

(3) **systematic reviews** – Reviews with no formal analysis, but conducted a systematic search following PRISMA or description of search criteria;

(4) **comparative data articles** – Studies with formal statistical analysis, but no systematic search criteria (e.g., PRISMA, search criteria);

(5) **phylogenetic comparative articles** – Similar to comparative data articles, with the inclusion of phylogenetic analysis.

### Exclusion criteria
- Simulation studies with no data obtained from the literature.
- Experimental, field, or museum morphology studies (primary from the authors study) with a component of comparative studies (secondary from exisiting literature and database).
- Editorial comments.
- Phylogenetic comparison with no formal analysis, or reviews which use/adapted phylogenetic trees from other studies. 
- Methodology papers.

## Journals included
- Comparative Physiology
- Journal of Comparative Physiology A - Neuroethology, Sensory, Neural, and Behavioral Physiology
- Journal of Comparative Physiology B - Biochemical, Systems, and Environmental Physiology
- Journal of Experimental Biology
- Journal of Experimental Botany
- Integrative and Comparative Biology
