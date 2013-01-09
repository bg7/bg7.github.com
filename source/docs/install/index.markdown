---
layout: page
title: "install"
date: 
comments: false
sharing: true
footer: true
---


BG7 itself needs almost no installation, and its only dependencies are

- [BLAST+](ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/)
- [Java](http://www.java.com/)

#### Hardware requirements

You'll need a `x64` system, with a reasonable amount of RAM: `6-7GB` will be ok for most uses.

Next, you'll find some OS-agnostic guidelines on how to get Java and BLAST on your system.

### Java JDK install

First of all, a little note about running BG7 with your favourite JVM: we test everything with Sun (now Oracle) HotSpot JVM, and we _recommend_ using it; this does not mean that Sun JVM is required: things _should_ work with your favourite JVM.

That said, you can get a distribution for your system from

- [Java downloads](http://www.java.com/en/download/manual.jsp)

### BLAST install

BLAST is fairly easy to install, as there are precompiled binaries for a plethora of platforms. You can get those from

- [BLAST+ executables = NCBI ftp site](ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/)

Note that BG7 will **not** work with the _legacy_ BLAST applications.

