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
      <predicted_gene>
        <id>3943</id>
        <start_is_canonical>true</start_is_canonical>
        <start_position>337</start_position>
        <end_is_canonical>true</end_is_canonical>
        <end_position>2796</end_position>
        <strand>+</strand>
        <blast_hit_start>337</blast_hit_start>
        <blast_hit_end>2796</blast_hit_end>
        <organism>Escherichia coli (strain K12)</organism>
        <status>selected_minor_threshold</status>
        <sequence>ATGCGAGTGTTGAAGTTCGGCGGTACATCAGTGGCAAATGCAGAACGTTTTCTGCGTGTTGCCGATATTCTGGAAAGCAATGCCAGGCAGGGGCAGGTGGCCACCGTCCTCTCTGCCCCCGCCAAAATCACCAACCACCTGGTGGCGATGATTGAAAAAACCATTAGCGGCCAGGATGCTTTACCCAATATCAGCGATGCCGAACGTATTTTTGCCGAACTTTTGACGGGACTCGCCGCCGCCCAGCCGGGGTTCCCGCTGGCGCAATTGAAAACTTTCGTCGATCAGGAATTTGCCCAAATAAAACATGTCCTGCATGGCATTAGTTTGTTGGGGCAGTGCCCGGATAGCATCAACGCTGCGCTGATTTGCCGTGGCGAGAAAATGTCGATCGCCATTATGGCCGGCGTATTAGAAGCGCGCGGTCACAACGTTACTGTTATCGATCCGGTCGAAAAACTGCTGGCAGTGGGGCATTACCTCGAATCTACCGTCGATATTGCTGAGTCCACCCGCCGTATTGCGGCAAGCCGCATTCCGGCTGATCACATGGTGCTGATGGCAGGTTTCACCGCCGGTAATGAAAAAGGCGAACTGGTGGTGCTTGGACGCAACGGTTCCGACTACTCTGCTGCGGTGCTGGCTGCCTGTTTACGCGCCGATTGTTGCGAGATTTGGACGGACGTTGACGGGGTCTATACCTGCGACCCGCGTCAGGTGCCCGATGCGAGGTTGTTGAAGTCGATGTCCTACCAGGAAGCGATGGAGCTTTCCTACTTCGGCGCTAAAGTTCTTCACCCCCGCACCATTACCCCCATCGCCCAGTTCCAGATCCCTTGCCTGATTAAAAATACCGGAAATCCTCAAGCACCAGGTACGCTCATTGGTGCCAGCCGTGATGAAGACGAATTACCGGTCAAGGGCATTTCCAATCTGAATAACATGGCAATGTTCAGCGTTTCTGGTCCGGGGATGAAAGGGATGGTCGGCATGGCGGCGCGCGTCTTTGCAGCGATGTCACGCGCCCGTATTTCCGTGGTGCTGATTACGCAATCATCTTCCGAATACAGCATCAGTTTCTGCGTTCCACAAAGCGACTGTGTGCGAGCTGAACGGGCAATGCAGGAAGAGTTCTACCTGGAACTGAAAGAAGGCTTACTGGAGCCGCTGGCAGTGACGGAACGGCTGGCCATTATCTCGGTGGTAGGTGATGGTATGCGCACCTTGCGTGGGATCTCGGCGAAATTCTTTGCCGCACTGGCCCGCGCCAATATCAACATTGTCGCCATTGCTCAGGGATCTTCTGAACGCTCAATCTCTGTCGTGGTAAATAACGATGATGCGACCACTGGCGTGCGCGTTACTCATCAGATGCTGTTCAATACCGATCAGGTTATCGAAGTGTTTGTGATTGGCGTCGGTGGCGTTGGCGGTGCGCTGCTGGAGCAACTGAAGCGTCAGCAAAGCTGGCTGAAGAATAAACATATCGACTTACGTGTCTGCGGTGTTGCCAACTCGAAGGCTCTGCTCACCAATGTACATGGCCTTAATCTGGAAAACTGGCAGGAAGAACTGGCGCAAGCCAAAGAGCCGTTTAATCTCGGGCGCTTAATTCGCCTCGTGAAAGAATATCATCTGCTGAACCCGGTCATTGTTGACTGCACTTCCAGCCAGGCAGTGGCGGATCAATATGCCGACTTCCTGCGCGAAGGTTTCCACGTTGTCACGCCGAACAAAAAGGCCAACACCTCGTCGATGGATTACTACCATCAGTTGCGTTATGCGGCGGAAAAATCGCGGCGTAAATTCCTCTATGACACCAACGTTGGGGCTGGATTACCGGTTATTGAGAACCTGCAAAATCTGCTCAATGCAGGTGATGAATTGATGAAGTTCTCCGGCATTCTTTCTGGTTCGCTTTCTTATATCTTCGGCAAGTTAGACGAAGGCATGAGTTTCTCCGAGGCGACCACGCTGGCGCGGGAAATGGGTTATACCGAACCGGACCCGCGAGATGATCTTTCTGGTATGGATGTGGCGCGTAAACTATTGATTCTCGCTCGTGAAACGGGACGTGAACTGGAGCTGGCGGATATTGAAATTGAACCTGTGCTGCCCGCAGAGTTTAACGCCGAGGGTGATGTTGCCGCTTTTATGGCGAATCTGTCACAACTCGACGATCTCTTTGCCGCGCGCGTGGCGAAGGCCCGTGATGAAGGAAAAGTTTTGCGCTATGTTGGCAATATTGATGAAGATGGCGTCTGCCGCGTGAAGATTGCCGAAGTGGATGGTAATGATCCGCTGTTCAAAGTGAAAAATGGCGAAAACGCCCTGGCCTTCTATAGCCACTATTATCAGCCGCTGCCGTTGGTACTGCGCGGATATGGTGCGGGCAATGACGTTACAGCTGCCGGTGTCTTTGCTGATCTGCTACGTACCCTCTCATGGAAGTTAGGAGTC</sequence>
        <protein_sequence>MRVLKFGGTSVANAERFLRVADILESNARQGQVATVLSAPAKITNHLVAMIEKTISGQDALPNISDAERIFAELLTGLAAAQPGFPLAQLKTFVDQEFAQIKHVLHGISLLGQCPDSINAALICRGEKMSIAIMAGVLEARGHNVTVIDPVEKLLAVGHYLESTVDIAESTRRIAASRIPADHMVLMAGFTAGNEKGELVVLGRNGSDYSAAVLAACLRADCCEIWTDVDGVYTCDPRQVPDARLLKSMSYQEAMELSYFGAKVLHPRTITPIAQFQIPCLIKNTGNPQAPGTLIGASRDEDELPVKGISNLNNMAMFSVSGPGMKGMVGMAARVFAAMSRARISVVLITQSSSEYSISFCVPQSDCVRAERAMQEEFYLELKEGLLEPLAVTERLAIISVVGDGMRTLRGISAKFFAALARANINIVAIAQGSSERSISVVVNNDDATTGVRVTHQMLFNTDQVIEVFVIGVGGVGGALLEQLKRQQSWLKNKHIDLRVCGVANSKALLTNVHGLNLENWQEELAQAKEPFNLGRLIRLVKEYHLLNPVIVDCTSSQAVADQYADFLREGFHVVTPNKKANTSSMDYYHQLRYAAEKSRRKFLYDTNVGAGLPVIENLQNLLNAGDELMKFSGILSGSLSYIFGKLDEGMSFSEATTLAREMGYTEPDPRDDLSGMDVARKLLILARETGRELELADIEIEPVLPAEFNAEGDVAAFMANLSQLDDLFAARVAKARDEGKVLRYVGNIDEDGVCRVKIAEVDGNDPLFKVKNGENALAFYSHYYQPLPLVLRGYGAGNDVTAAGVFADLLRTLSWKLGV</protein_sequence>
        <annotation_uniprot_id>P00561</annotation_uniprot_id>
        <hit_def>gi|49175990|ref|NC_000913.2| Escherichia coli str. K-12 substr. MG1655 chromosome, complete genome</hit_def>
        <evalue>0.0</evalue>
        <protein_names>Bifunctional aspartokinase/homoserine dehydrogenase 1 (Aspartokinase I/homoserine dehydrogenase I) (AKI-HDI) [Includes: Aspartokinase (EC 2.7.2.4); Homoserine dehydrogenase (EC 1.1.1.3)]</protein_names>
        <comment_function></comment_function>
        <ec_numbers>2.7.2.4; 1.1.1.3</ec_numbers>
        <interpro>IPR002912; IPR001048; IPR005106; IPR001341; IPR018042; IPR011147; IPR001342; IPR019811; IPR016040; </interpro>
        <gene_ontology>ATP binding; NADP or NADPH binding; amino acid binding; aspartate kinase activity; homoserine biosynthetic process; homoserine dehydrogenase activity; lysine biosynthetic process via diaminopimelate; oxidation-reduction process; threonine biosynthetic process</gene_ontology>
        <pathway>Amino-acid biosynthesis; L-lysine biosynthesis via DAP pathway; (S)-tetrahydrodipicolinate from L-aspartate: step 1/4. Amino-acid biosynthesis; L-methionine biosynthesis via de novo pathway; L-homoserine from L-aspartate: step 1/3. Amino-acid biosynthesis; L-methionine biosynthesis via de novo pathway; L-homoserine from L-aspartate: step 3/3. Amino-acid biosynthesis; L-threonine biosynthesis; L-threonine from L-aspartate: step 1/5. Amino-acid biosynthesis; L-threonine biosynthesis; L-threonine from L-aspartate: step 3/5. </pathway>
        <protein_family>Aspartokinase family; Homoserine dehydrogenase family</protein_family>
        <keywords>ATP-binding; Allosteric enzyme; Amino-acid biosynthesis; Complete proteome; Direct protein sequencing; Kinase; Multifunctional enzyme; NADP; Nucleotide-binding; Oxidoreductase; Repeat; Threonine biosynthesis; Transferase</keywords>
        <length>820</length>
        <subcellular_locations></subcellular_locations>
        <pubmed_id>7003595; 1630901; 7610040; 9278503; 16738553; 6277952; 2410621; 387092; 6298218; 390305</pubmed_id>
        <gene_names>thrA thrA1 thrA2 b0002 JW0001</gene_names>
        <gene_ontology_id>GO:0005524; GO:0050661; GO:0016597; GO:0004072; GO:0009090; GO:0004412; GO:0009089; GO:0055114; GO:0009088</gene_ontology_id>
        <domains>ACT domains (2)</domains>
        <accession>P00561</accession>
      </predicted_gene>
      <predicted_gene>
{% endcodeblock %}