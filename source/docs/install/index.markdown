---
layout: page
title: "install"
date: 
comments: true
sharing: true
footer: true
---


bg7 itself needs almost no installation, and its only dependencies are

- [BLAST]()
- [Java JDK]()

#### Hardware requirements ####

You'll need a `x64` system, with a reasonable amount of RAM: `6-7GB` will be ok for most uses.

Next, you'll find some OS-agnostic guidelines on how to get Java and BLAST on your system.

### Java JDK install ###

First of all, a little note about running bg7 with your favourite JVM: we test everything with Sun (now Oracle) HotSpot JVM, and we _recommend_ using it; this does not mean that Sun JVM is required: things _should_ work with your favourite JVM (OpenJDK, for example).

That said, you can get a distribution for your system from

- [Java SE JDK downloads](http://www.oracle.com/technetwork/java/javase/downloads/jdk-6u29-download-513648.html)

### BLAST install ###

BLAST is fairly easy to install, as there are precompiled binaries for a plethora of platforms. You can get those from

- [BLAST+ executables = NCBI ftp site](ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/)

Note that bg7 will **not** work with the _legacy_ BLAST applications.

### bg7 install ###

While it is possible to run bg7 on a windows system, the provided scripts need a UNIX environment. 

1. TODO...

