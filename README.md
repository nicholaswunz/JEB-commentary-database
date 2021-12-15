# JEB database commentary

This repository contains code and data needed to reproduce the figures in the article:

**Schwanz L. E., Gunderson, A., Iglesias-Carrasco M., Johnson M. A., Kong J. D., Riley J., & Wu N. C.** (Accepted) Best practices for building and curating databases for comparative analyses. *Journal of Experimental Biology*

Manuscript accetped for the Journal of Experimental Biology's special issue "*Building New Paradigms in Comparative Physiology and Biomechanics*".

**Raw data**
- JEB_data.csv - JEB meta-data of quantitative and comparative papers from six specialist journals (2014-2021) used for figure production.
- Noble_artcles.csv - Meta-data of meta-analysis papers published from the literature were obtained from [Dan Noble](https://github.com/daniel1noble/meta_physiology).

**R code**
- JEB_commentary_figure.R - Data cleaning, and figure production.

**Figure output**
- Fig 1 - Database development flowchart (Adobe Illustrator).
- Fig 2a - Publication year (R/ Adobe Illustrator).
- Fig 3b - Screened search (Excel/ Adobe Illustrator).
- Fig 3 - Database structure (Powerpoint).

## Abstract
Comparative analyses have a long history of macro-ecological and -evolutionary approaches to understand structure, function, mechanism, and constraint. As the pace of science accelerates, there is ever-increasing access to diverse types of data and open-access databases that are enabling and inspiring new research. Whether conducting a species-level trait-based analysis or a formal meta-analysis of study effect sizes, comparative approaches share a common reliance on reliable, carefully-curated databases. Unlike many scientific endeavors, building a database is a process that many researchers undertake infrequently and in which we are not formally trained. This commentary provides an introduction to building databases for comparative analyses and highlights challenges and solutions that the authors of the commentary have faced in their own experiences. We focus on four major tips for strategizing literature searches, structuring databases, establishing version control, and making databases accessible. We highlight how one’s approach to these tasks often depends on the goal of the study and the nature of the data. Finally, we assert that the curation of single-question databases has several disadvantages: it limits the possibility of using databases for multiple purposes and decreases efficiency owing to independent researchers repeatedly sifting through large volumes of raw information. We argue that curating databases that are broader than one research question can provide a large return on investment, and that research fields could increase efficiency if community curation of databases was established.

## Meta-data
Number of papers published yearly (Jan 2014 - July 2021), grouped by 5 categories: (1) meta-analyses, (2) comparative literature reviews, (3) systematic reviews, (4) comparative data articles, and (5) phylogenetic comparative articles. All categories involve collecting data from the literature or existing databases. Description for each category as below:

(1) **meta-analyses**: Studies with formal statistical analysis and conducted systematic search following PRISMA or description of search criteria;

(2) **comparative literature reviews**: Reviews with no formal analysis and no systematic search criteria (e.g., PRISMA, search criteria);

(3) **systematic reviews**: Reviews with no formal analysis, but conducted a systematic search following PRISMA or description of search criteria;

(4) **comparative data articles**: Studies with formal statistical analysis, but no systematic search criteria (e.g., PRISMA, search criteria);

(5) **phylogenetic comparative articles**: Similar to comparative data articles, with the inclusion of phylogenetic analysis.

Quantitative and comparative reviews were counted by JR, NCW, and JDK.

### Exclusion criteria
- Simulation studies with no data obtained from the literature.
- Experimental, field, or museum morphology studies (primary from the authors study) with a component of comparative studies (secondary from exisiting literature and database).
- Editorial comments.
- Phylogenetic comparison with no formal analysis, or reviews which use/adapted phylogenetic trees from other studies. 
- Methodology papers.

## Journals included
Journals included in the search were decided by the authors of the commentary. This is by no means comprehensive and represents example journals in their respective field. A subset of either years or issue date were assigned for quality check when tallying. Quality control was performed by NCW, JR, and JDK.

- Comparative Physiology
- Journal of Comparative Physiology A - Neuroethology, Sensory, Neural, and Behavioral Physiology
- Journal of Comparative Physiology B - Biochemical, Systems, and Environmental Physiology
- Journal of Experimental Biology
- Journal of Experimental Botany
- Integrative and Comparative Biology

## Author links
- Alex Gunderson: [Twitter](https://twitter.com/gunderwhelming).
- Michele A. Johnson: [Twitter](https://twitter.com/lizardmichele).
- Jacinta D Kong: [Github](https://github.com/jacintak), [Twitter](https://twitter.com/jacintakong).
- Julia Riley: [Github](https://github.com/julia-riley), [Twitter](https://twitter.com/jr4science).
- Nicholas C Wu: [Github](https://github.com/nicholaswunz), [Twitter](https://twitter.com/nicholaswunz).
