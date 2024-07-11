#### Snakemake workflow is written for paired RNA-seq data but can be easily modified for single end data.

#### Prepare the config files with input details

Edit the config file to add
1. indir : Path for input directory containing fastq files
2. outdir : Path for output directory
3. wildcard_pattern for fastq_input, pair1_input and pair_2input. The default is "_fastq.gz", "_rnaseq_pair1_fastq.gz" and "_rnaseq_pair2_fastq.gz" respectively.
4. Path for different executables

#### Prepare the cluster file
