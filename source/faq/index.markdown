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

#### what do you mean by bacterial? ####

#### can I annotate say a fungal genome with bg7? ####

#### what about annotating a human genome? ####





