---
layout: page
title: "How It Works"
date: 2011-10-19 13:45
comments: true
sharing: true
footer: true
---

bg7 is an annotation system where the ORF prediction step is based on protein similarity. The guiding principle is _Use as much information as you can_. Instead of relying almost exclusively in start and stop signals as some other pipelines do for ORF prediction we rely on the overall similarity of the region to a certain protein. We then look for start/stop signals to define the ORF. If we don't find them (suppose they're pseudogenes or there are lots of sequencing errors) we don't lose the putative ORF, we mark it as such and keep it. 

{% img /images/bg7-design-1.jpg %}

The pipeline is pretty simple. **Here you have an overall description of the main steps 

//Capture 4**

First a set of reference proteins are searched with Blast (tBlastn in particular) in the genome sequence to annotate (one or several contigs, it doesn't matter). 

{% img /images/bg7-design-5.jpg %}

We then have lots of blast hits of the proteins in the contigs, some of them with lots of blast HPSs (High-scoring Segment Pairs). The first thing we do with blast results is merging all the HSPs from a hit to define a single similarity region and then look upstream and downstream for start and stop signals.

//Capture 5 7 y 8 en fila a ser posible please



At this point in the pipeline genes are already defined but... what if in the same region of the contig there was more than one reference protein with a blast hit? The next step is solving conflicts like this (where several proteins would be annotating the same region) and the fact that there could be overlapping genes. 

So, in the first kind of conflicts where several proteins would be annotating the same region, the gene with the protein with a higher similarity to the contig is selected and the rest of them are marked as 'dimissed genes'

{% img left /images/bg7-design-9.jpg %}

And when the overlapping region between two genes is larger than a threshold defined by the user, the gene with the protein with a higher similarity with the contig is selected and the rest are marked as 'dimissed genes'.

{% img /images/bg7-design-10.jpg %}

We already have all the genes well defined (not overlapping more than what we want to and with no more than one protein annotating each region). Now it's time to search RNA genes. This is done in a very similar way. Reference RNAs are searched with blastn in the contigs and RNA genes are defined in the same way as protein genes.

{% img right /images/bg7-design-11.jpg %}

RNA genes and proteins selected genes (without the dismissed ones) are integrated in a way that a RNA gene always is chosen over a protein one. So finally we have the complete annotation with protein and RNA genes.

{% img /images/bg7-design-12.jpg %}
