---
layout: page
title: "Example Data"
date: 2011-10-08 09:19
comments: true
sharing: true
footer: true
---

This is example output from a project named `K12`, with...

#### GFF output ####

Output from `K12_Annotation_GFF.gff`, first predicted gene

{% codeblock K12 annotation gff output - preamble + first predicted gene %}
##gff-version 3
##date Thu Feb 17 18:08:53 GMT+00:00 2011
##Type genomic DNA
gi|49175990|ref|NC_000913.2|	Similarity-based Predicted Gene	gene	111	338	1.5504E-31	-	.	locus_tag=3679;
{% endcodeblock %}

#### GenBank output ####

{% codeblock K12 annotation genbank output - preamble + first predicted gene %}
LOCUS      E. coli K12          4639675 bp    DNA linear   BCT 19-OCT-2011
DEFINITION  Genome of Escherichia coli K12. NC_000913.2
ACCESSION   NC_000913.2
VERSION     NC_000913.2.1
KEYWORDS    .
SOURCE      Escherichia coli K12
  ORGANISM  cellular organisms; Bacteria; Proteobacteria; Gammaproteobacteria; E
            nterobacteriales; Enterobacteriaceae; Escherichia

FEATURES             Location/Qualifiers
     source          1..4639675
                     /organism="Escherichia coli K12 NC_000913.2"
     gene            complement(111..338)
                     /product="Putative uncharacterized protein"
     CDS             complement(111..338)
                     /product="Putative uncharacterized protein"
                     /translation="MVVTSLPLVEKKSPHCQVRAFFCVSCTRQPAPLPVVMVMVVVMVV
                     LMRFMDVVYSVIFICLCAMPILVKVFSDLSQ"
{% endcodeblock %}

#### TSV output ####

first 12 lines from `K12_Annotation.tsv`

{% codeblock K12 annotation tsv output - preamble + first prdicted gene %}
Contig_id	Gen_id	Gene/Rna	start_is_canonical	start_position	end_is_canonical	end_position	Hit_def	Similar_to	Protein names	Organism	Comment (FUNCTION)	EC numbers	InterPro	Gene Ontology	Pathway	Protein family	Keywords	Length	Subcellular locations	PubMed ID	Strand	Intragenic_stops	Frameshifts	Gene status	gene_dismissed_by	Evalue	Nucleotide sequence	Aminoacid sequence
gi|49175990|ref|NC_000913.2|	3679	gene	true	338	true	111	gi|49175990|ref|NC_000913.2| Escherichia coli str. K-12 substr. MG1655 chromosome, complete genome	E4P2D2	Putative uncharacterized protein	Escherichia coli O83:H1 str. NRG 857C								78		18312396; 17900983; 21108814; 	-			selected_minor_threshold	null	1.5504E-31	ATGGTTGTTACCTCGTTACCTTTGGTCGAAAAAAAAAGCCCGCACTGTCAGGTGCGGGCTTTTTTCTGTGTTTCCTGTACGCGTCAGCCCGCACCGTTACCTGTGGTAATGGTGATGGTGGTGGTAATGGTGGTGCTAATGCGTTTCATGGATGTTGTGTACTCTGTAATTTTTATCTGTCTGTGCGCTATGCCTATATTGGTTAAAGTATTTAGTGACCTAAGTCAA	MVVTSLPLVEKKSPHCQVRAFFCVSCTRQPAPLPVVMVMVVVMVVLMRFMDVVYSVIFICLCAMPILVKVFSDLSQ	
{% endcodeblock %}


#### XML output ####

This is the first predicted gene

{% codeblock K12 annotation xml output - preamble + first predicted gene %}
<annotation>
  <predicted_genes>
    <contig>
      <id>gi|49175990|ref|NC_000913.2|</id>
      <predicted_gene>
        <id>3679</id>
        <start_is_canonical>true</start_is_canonical>
        <start_position>338</start_position>
        <end_is_canonical>true</end_is_canonical>
        <end_position>111</end_position>
        <strand>-</strand>
        <blast_hit_start>338</blast_hit_start>
        <blast_hit_end>111</blast_hit_end>
        <organism>Escherichia coli O83:H1 str. NRG 857C</organism>
        <status>selected_minor_threshold</status>
        <sequence>ATGGTTGTTACCTCGTTACCTTTGGTCGAAAAAAAAAGCCCGCACTGTCAGGTGCGGGCTTTTTTCTGTGTTTCCTGTACGCGTCAGCCCGCACCGTTACCTGTGGTAATGGTGATGGTGGTGGTAATGGTGGTGCTAATGCGTTTCATGGATGTTGTGTACTCTGTAATTTTTATCTGTCTGTGCGCTATGCCTATATTGGTTAAAGTATTTAGTGACCTAAGTCAA</sequence>
        <protein_sequence>MVVTSLPLVEKKSPHCQVRAFFCVSCTRQPAPLPVVMVMVVVMVVLMRFMDVVYSVIFICLCAMPILVKVFSDLSQ</protein_sequence>
        <annotation_uniprot_id>E4P2D2</annotation_uniprot_id>
        <hit_def>gi|49175990|ref|NC_000913.2| Escherichia coli str. K-12 substr. MG1655 chromosome, complete genome</hit_def>
        <evalue>1.5504E-31</evalue>
        <protein_names>Putative uncharacterized protein</protein_names>
        <comment_function></comment_function>
        <ec_numbers></ec_numbers>
        <interpro></interpro>
        <gene_ontology></gene_ontology>
        <pathway></pathway>
        <protein_family></protein_family>
        <keywords></keywords>
        <length>78</length>
        <subcellular_locations></subcellular_locations>
        <pubmed_id>18312396; 17900983; 21108814; </pubmed_id>
        <gene_names>NRG857_00010</gene_names>
        <gene_ontology_id></gene_ontology_id>
        <domains></domains>
        <accession>E4P2D2</accession>
      </predicted_gene>
{% endcodeblock %}