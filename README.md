# Auto_ncbi_download
A snakemake script to download ncbi genomes, gather them to a directory and discompress.

## Purpose
The main purpose of this snakemake script is to download the genome files in fasta.gz format for the specified species from the NCBI database,using the ncbi-genome-download software. Then the fasta.gz files were all put together in one folder and decompressed using pigz software to obtain fasta files for the next step of analysis.

## Dependences

## Usage
Just open the .smk file with a editor like notepad++，change line 2 the origanism you want to download.
`
organism="Bifidobacterium thermophilum"
`
Create a .txt file name **start_down.txt** where you put the script.Then type the following command:
```
snakemake -s ncbi_down_new2.smk -c 4
```
