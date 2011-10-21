---
layout: page
title: "How It Works"
date: 2011-10-19 13:45
comments: true
sharing: true
footer: true
---

#### approach ####

bg7 is an annotation system where the ORF prediction step is based on protein similarity. That's the key feature, and follows what we view as our guiding principle: _use as much information as you can_. 

{% img right /images/1_approach.png %}
Instead of relying almost exclusively in start and stop signals (as some other pipelines do for ORF prediction) we rely on the overall similarity of the region to a certain protein. We then look for start/stop signals to define the ORF. If we don't find them (suppose they're pseudogenes or there are lots of sequencing errors) we don't lose the putative ORF, we mark it as such and keep it. 

Let's go through each of the steps in more detail:

#### 1. proteins vs contigs 

{% img right /images/2_tblastn.png %}
First, a set of reference proteins are searched with Blast (`tBlastn` in this case) in the genome sequence to annotate (one or several contigs, it doesn't matter). This reference proteins are user-selected for each run, and experience shows that they don't necessarily need to come from a reference/similar genome.

#### 2. CDS definition ####

We then have lots of blast hits of the proteins in the contigs, some of them with possibly lots of blast HPSs (High-scoring Segment Pairs);
first thing we do with this blast results is merging all the HSPs from a hit to define a single similarity region between (one translated version) of the protein and the contig.

{% img right /images/3_ORF_definition.png %}
Once we have merged coherent HSPs, we look upstream and downstream for start and stop signals, and define (preliminary) genes CDS accordingly. These just defined genes could suffer from a series of deficiencies: non-canonical start/stop codons, intragenic stop codons and/or frameshifts. We check for all this possibilities, and mark the corresponding genes as such (intragenic stop codon, frameshift, etc). It's important to note that we don't just drop these. 

This is one of the main reasons why this system is so robust to NGS sequencing errors. In 454, for example, frameshifts are pretty common due to indels in homopolymeric regions; substitutions, more common in Illumina sequencing, can make stop codons appear in the middle of a coding sequence. Some other ORF predictors would fail if frameshifts or intragenic stop codons occur (predicting a wrong coding sequence) but bg7, since it relies on the overall protein similarity, can easily handle that.

#### 3. conflict resolution ####

At this point in the pipeline genes are already defined but... what if in the same region of the contig there was more than one reference protein with a blast hit? The next step is solving conflicts like this (where several proteins would be annotating the same region) and the fact that there could be overlapping genes. 

{% img left /images/4_overlapping.png %}
So, in the first kind of conflicts where several proteins would be annotating the same region, the gene with the protein with a higher similarity to the contig is selected and the rest of them are marked as `dimissed genes`

And when the overlapping region between two genes is larger than a threshold defined by the user, the gene with the protein with a higher similarity with the contig is selected and the rest are marked as `dimissed genes`.

#### 4. RNA prediction ####

We already have all the genes well-defined (not overlapping more than what we want to and with no more than one protein annotating each region); it's time to search for RNA genes. This is done in a very similar way:

{% img right /images/5_RNA.png %}
Reference RNAs are searched with blastn in the contigs and RNA genes are defined in the same way as protein genes.
RNA genes and proteins selected genes (without the dismissed ones) are integrated in a way that a RNA gene always is chosen over a protein one. That's all! we have the complete annotation with protein and RNA genes.

{% img center /images/6_Genome_annotation.png %}
