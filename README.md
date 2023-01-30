# Auto_ncbi_download
A snakemake script to download ncbi complete genome files, gather them to a directory and discompress.

## Purpose
The main purpose of this snakemake script is to download the complete genome files in fasta.gz format for the specified species from the NCBI Refseq database, using the ncbi-genome-download software. 
Then the fasta.gz files were all put together in a folder and decompressed using pigz to obtain fasta files for the next step of analysis.

## Dependences
The main dependences are snakemake, pigz and [ncbi-genome-download](https://github.com/kblin/ncbi-genome-download).
You can create a environment using the **ncbi_download.yaml** file by:
```
conda env create -f ncbi_download.yaml
```
This will create an environment containing all softwares required.

## Usage
Just open the .smk file with a editor like notepad++，change line 2 the origanism you want to download.

Such as:
`
organism="Bifidobacterium thermophilum"
`

Create a .txt file name **start_down.txt** where you put the script.Then type the following command:
```
snakemake -s ncbi_down_new2.smk -c 4
```

##
