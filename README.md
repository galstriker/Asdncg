# Asdncg
A snakemake script to download ncbi complete genome files, gather them to a directory and discompress them to obtain fasta format files.

## Purpose
The main purpose of this small snakemake script is to download the complete genome files in fasta.gz format for the specified species from the NCBI Refseq database, using the ncbi-genome-download software. 
Then the fasta.gz files were all put together in a folder and decompressed using pigz to obtain fasta files for the next step of analysis.

## Dependences
The main dependences are  [ncbi-genome-download](https://github.com/kblin/ncbi-genome-download), [snakemake](https://github.com/snakemake/snakemake) and [pigz](https://github.com/madler/pigz).
You can create a environment using the **ncbi_download.yaml** file by:
```
conda env create -f ncbi_download.yaml
```
This will create an environment containing all softwares required.
To activate this environment, type:

```
source activate ncbidownload
```

## Usage
Just open the .smk file with a editor like notepad++，change line 2 the origanism to which you want to download.

Such as:

`
organism="Bifidobacterium thermophilum"
`

Create a .txt file name **start_down.txt** where you put the script. Then type the following command:
```
snakemake -s Asdncg.smk -c 4 --jobs 1
```

## More

If you want to learn more about downloading genomes data, please visit the page of this script's main dependence.
[ncbi-genome-download](https://github.com/kblin/ncbi-genome-download). 

