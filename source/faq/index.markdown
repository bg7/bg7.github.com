---
layout: page
title: "Faq"
date: 2011-10-08 09:13
comments: true
sharing: true
footer: true
---

Frequently asked questions; if you have a question not answered here, post a comment at the bottom of this page: we'll try to answer it here as soon as possible.

#### table of contents ####

- _requirements_
	* [what software do I need for running bg7?](#software-reqs)
	* [what about hardware requirements?](#hardware-reqs)
- _license_
	* [what is bg7 license?](#bg7-license)
	* [AGPL -_what?_](#agpl)
	* [can I include/import/use bg7 in my closed-source application x?](#bg7-and-closed-source)
	* [can I sell something based on / using bg7??](#sell-something-based-on-bg7)
- _bg7 input/output_
	* [what do I need for annotating my genome?](#bg7-input)
	* [does bg7 output annotation data in format xyz?](#bg7-output-formats)
- _running bg7 in the cloud_
- _code_
	* [what programming language is bg7 written in?](#bg7-is-written-in)
	* [where's the code?](#where-is-the-code)
- _biology-related_
	* [do I need a reference genome](#reference-genome)
	* [what do you mean by bacterial?](#what-is-bacterial)
	* [can I annotate say a fungal genome with bg7?](#annotating-fungal-genomes)
	* [what about a human genome?](#annotating-human-genomes)
- _support_
	* [where can I get help?](#getting-help)
	* [something's not working; what can I do?](#errors-issues-etc)





************



## requirements ##

#### <a id="software-reqs"></a>What software do I need for running bg7?  ####

We strive to keep dependencies at a minimum: to run bg7 you just need

* **Java** a fairly recent `x64` JVM, anything above `1.6` is ok. You can get installers of oracle/Sun JDK-6u27 for a plethora of platforms from [Oracle jdk download website](http://www.oracle.com/technetwork/java/javase/downloads/jdk-6u27-download-440405.html)

* **BLAST** we recommend `blast+ 2.2.25`, you can get precompiled binaries from the [NCBI blast ftp site](ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/)

#### <a id="hardware-reqs"></a>what about hardware requirements? ####

With the current version, you just need a considerable amount of RAM: anything above `64GB` is ok. Obviously, this means you need a `64bit` OS.

## license ##

#### <a id="bg7-license"></a>what is bg7 license? ####

bg7 is licensed under AGPLv3: [GNU Affero General Public License, version 3](http://www.gnu.org/licenses/agpl.html).


#### <a id="agpl"></a>AGPL _-what?_ ####

This is `GPLv3` + further copyleft restrictions. You can read nore about this in [licensing](http://bg7.ohnosequences.com/licensing).

#### <a id="bg7-and-closed-source"></a>can I include/import/use bg7 in my closed-source application x? ####

_Absolutely not_; Any application using bg7 code must be AGPLv3-licensed, and 

#### <a id="sell-something-based-on-bg7"></a>can I sell something based on / using bg7?? ####

_Yes!_ but remember that you need to provide bg7 source code +  source code of any modifications, software using bg7, etc to your users. See [Selling Free Softare - GNU project](http://www.gnu.org/philosophy/selling.html).


## bg7 input/output ##

#### <a id="bg7-input"></a>what do I need for annotating my genome? ####

you'll need: 

- your genome sequence _- FASTA_ 
- genetic code _- plain text_ a text file like [this one](https://raw.github.com/bg7/BG7/master/genetic_code.txt)_
- reference proteins _- FASTA file_
- reference RNAs _- FASTA file_
- pipeline executiom template _- XML_ here's a [template](https://raw.github.com/bg7/BG7/master/executionsTemplate.xml)
- **only for gbk and/or embl output:** additional info on name of the source, type of genome, etc _- XML file_

#### <a id="bg7-output-formats"></a>does bg7 output annotation data in format xyz? ####

bg7 output is available in the following formats: 

- GFF3 `.gff` - [GFF3 specs](http://www.sequenceontology.org/gff3.shtml)
- Genbank `.gbk` - [Genbank specs](http://www.ncbi.nlm.nih.gov/Sitemap/samplerecord.html)
- TSV `.tsv` a tab-separated values file
- XML `.xml`

## code ##

#### <a id="bg7-is-written-in"></a>what programming language is bg7 written in? ####

pure Java.

#### <a id="where-is-the-code"></a>where's the code? ####

The code is hosted in github, under the [bg7 organization](http://github.com/bg7); we also do all bg7 development there.



## biology ##

#### <a id="reference-genome"></a>do I need a reference genome? ####

_Not at all!_ This system is not based on a ORF predicton step highly dependent on having a close reference genome. That being based on protein similarity, you'll need a set of reference proteins but these proteins don't need to be very close ones: Good results have been achieved in genomes with no close proteins available and the quality of annotations don't seem to depend on whether the reference proteins are close or not.

#### <a id="what-is-bacterial"></a>what do you mean by bacterial? ####

we mean prokaryotes: _bacteria_ and _archaea_

#### <a id="annotating-fungal-genomes"></a>can I annotate say a fungal genome with bg7? ####

bg7 is not initially designed to deal with eukaryote genomes: exons, introns and all that. 

However, you can get something useful by playing with the 4th argument in the _PredictGenes_ module. This argument sets up the maximum difference (400 by default) admitted between the distance of two adjacent Blast HSPs in the query and in the hit. Allowing larger differences could make the system tolerant to introns in the hit.

#### <a id="annotating-human-genomes"></a>what about annotating a human genome? ####

We haven't tried bg7 on a higher eukaryote genome yet; maybe it yields something useful.
