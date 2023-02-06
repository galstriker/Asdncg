#change the organism to which you want to download.
organism="Bifidobacterium thermophilum"
level= "complete"

rule all:
	input:
		"download_complete.txt",
		"complete/refseq/bacteria/getfnacomplete.txt",
		"complete/refseq/bacteria/fna/discompresscomplete.txt"

#download the fna flies of the organism you gave.
rule download:
	input:
		"start_down.txt"
	params:
		O= organism,
		l= level,
		outdir="complete"
	output:
		"download_complete.txt"
	shell:
		"""
		ncbi-genome-download bacteria -F fasta -l {params.l} -g "{params.O}" -o {params.outdir} -p 5 -r 5
		touch download_complete.txt
		"""

#gather the fna.gz files to fna/ directory.
rule get:
	input:
		"download_complete.txt"
	output:
		"complete/refseq/bacteria/getfnacomplete.txt"
	shell:
		"""
		cd complete/refseq/bacteria/
		mkdir fna
		find . -iname "*.gz" -type f -exec cp {{}} fna/ \;
		touch getfnacomplete.txt
		"""

#use pigz to discompress the fna.gz files.
rule discompress:
	input:
		"complete/refseq/bacteria/getfnacomplete.txt"
	output:
		"complete/refseq/bacteria/fna/discompresscomplete.txt"
	shell:
		"""
		cd complete/refseq/bacteria/fna/
		pigz -d *.gz
		touch discompresscomplete.txt
		"""
