# Detect RNA editing and hyper-editing events from RNA-seq (local fastq files or SRA ID).

Modified from https://github.com/hagitpt/Hyper-editing, described in: [A genome-wide map of hyper-edited RNA reveals numerous new sites](https://www.nature.com/articles/ncomms5726), Hagit T. Porath, Shai Carmi & Erez Y. Levanon, Nature Communications 5: 4726 (2014) 

## Installation

Required tools: bwa, samtools, bam2fastx

Optional: sra-tool (needed to fetch fastq files from SRA ID (-sra_id)

Download the source code:

```
git clone https://github.com/xuebingwu/hyper-editing.git
```

Add the folder to your default path in ~/.bashrc

```
PATH="$PATH:path_to_hyper_editing"
```

## Default genome/repeat files

To use default genome and repeat files, change line 28 and 29 in the main script hyper_editing


```
Usage: hyper_editing [Options] -sra_id SRR***** | -fastq r1.fastq [-fastq2 r2.fastq]

Options:
    -fastq <FILE>    Input fastq file (read1/mate1 if paired-end)
    -fastq2 <FILE>   Input fastq file, read2/mate2, only for paired-end data
    -sra_id <STR>    Use fastq-dump to get fastq files from a SRA ID (SRR***)
    -genome <PATH>   Path to genome *.fa and bwa index
    -repeat <FILE>   Simple repeat file (default provided)
    -output <STR>    Output folder name (will be under current folder)
    -gap <N>         Gap max size between the pairs (default=50000)
    -skip_bwa        Skip bwa mapping if output exists
    -phred64         Set PHRED score offset to 64 (default=33)

Required to run:
    bwa, bam2fastx, samtools, and fastq-dump if using -sra_id

Example:

hyper_editing -sra_id SRR948734
hyper_editing -fastq data/input.fq
hyper_editing -fastq data/r1.fq -fastq2 data/r2.fq
```
