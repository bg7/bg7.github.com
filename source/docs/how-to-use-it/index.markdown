---
layout: page
title: "How to use bg7"
date:
comments: true
sharing: true
footer: true
---

#### How to use bg7 in the cloud

We've set up an AWS EC2 AMI to run bg7 in a very easy way _-with just a single command_. All you need to have before starting with the annotation is:

* An [Amazon account](http://aws.amazon.com/) . You have to sign up for [EC2 services](http://aws.amazon.com/ec2/)
* The input files:
	1. The genome you want to annotate
	2. A FASTA file with the set of reference proteins from Uniprot. [Important note about this file](#uniprot-fasta-file)
	3. A FASTA file with the set of reference RNAs
	4. An XML file with external data that will be used to generate the Genbank files. See a template of this file [here] (https://raw.github.com/bg7/BG7/master/GenBankExternalData.xml)
	5. The genetic code you want to use. Like [this one](https://raw.github.com/bg7/BG7/master/genetic_code.txt)
	
[Example files to run an annotation](https://github.com/downloads/bg7/BG7/bg7_example_input_files.zip)

##### Steps to run the annotation

###### 1 Launch an EC2 instance
Launch an instance of this AMI `ohnosequences.public.x64.ebs`. For a normal size bacterial genome (around 4Mb) and a set of around 120.000 proteins we recommend to use a `c1.xlarge` machine, you can try with larger machines like `m2.4xlarge` Follow the instructions of this screencast 

- AMI ID  ```ami-810c31f5```
- User data ```bg7-0.9```
 

<iframe src="http://player.vimeo.com/video/31839742?title=0&amp;byline=0&amp;portrait=0" width="400" height="265" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe>

###### 2 Connect to the instance

<iframe src="http://player.vimeo.com/video/31845636?title=0&amp;byline=0&amp;portrait=0" width="400" height="265" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe>

###### 3 Download input files

You can use the instance volume to run the annotation (usually you won't need more than 1G) or you can place the files in an extra EBS volume, it's up to you!

```
cd 
mkdir annotation
cd annotation
wget https://github.com/downloads/bg7/BG7/bg7_example_input_files.zip
unzip bg7_example_input_files.zip
```

and create the output folder

```
mkdir out
```

###### 4 Run the annotation

```
bg7 -n Annotation_test -g escherichia_coli_o104_h4_str._ty-2482_1_supercontigs.fasta -p EHEC_ReferenceProteins_17_08_2012.fasta -r EHEC_Reference_RNAs.frn -c genetic_code.txt -o /mnt/annotation/out -G GenBankExternalData.xml
```


#### How to use bg7 in other servers

Sure you can also run bg7 in other servers. Here you can take a look at the [requirements](http://bg7.ohnosequences.com/faq/#software-reqs)

##### Installing bg7

The instalation is indeed pretty straightforward. Just use our installers for [java](http://resources.ohnosequences.com/ec2/installers/java-latest), [blast](http://resources.ohnosequences.com/ec2/installers/blast-latest) and [bg7](http://resources.ohnosequences.com/ec2/installers/bg7-0.9)

The following commands will address the instalation

```
wget -O java.install http://resources.ohnosequences.com/ec2/installers/java-latest
chmod u+x java.install
./java.install

wget -O blast.install http://resources.ohnosequences.com/ec2/installers/blast-latest
chmod u+x blast.install
./blast.install

wget -O bg7.install http://resources.ohnosequences.com/ec2/installers/bg7-0.9
chmod u+x bg7.install
./bg7.install 
```

##### Running bg7

Once the installation is complete you can test if it's ok typing bg7. A menu with options will appear, otherwise the installation has failed.
You can then run bg7. Remember you need the following input files

1. The genome you want to annotate
2. A FASTA file with the set of reference proteins from Uniprot. [Important note about this file](#uniprot-fasta-file)
3. A FASTA file with the set of reference RNAs
4. An XML file with external data that will be used to generate the Genbank files. See a template of this file [here] (https://raw.github.com/bg7/BG7/master/GenBankExternalData.xml)
5. The genetic code you want to use. Like [this one](https://raw.github.com/bg7/BG7/master/genetic_code.txt)
	
[Example files to run an annotation](https://github.com/downloads/bg7/BG7/bg7_example_input_files.zip)



#### Important note on how to make the reference proteins FASTA file  

BG7 relies in Uniprot to get protein annotations so the sequences of the reference proteins must be downloaded from Uniprot in FASTA format so the headers are like this

 `>sp|P24232|HMP_ECOLI Flavohemoprotein OS=Escherichia coli (strain K12) GN=hmp PE=1 SV=1` 

where the second token is the protein Uniprot ID.

This video shows you how to get these sequences from Uniprot very easily 

<iframe src="http://player.vimeo.com/video/31912794?title=0&amp;byline=0&amp;portrait=0" width="400" height="375" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe>