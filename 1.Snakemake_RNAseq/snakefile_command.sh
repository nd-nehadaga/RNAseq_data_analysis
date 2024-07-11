#!/bin/bash

snakemake -s snakemake_RNA --nolock --reason --configfile config.json --latency-wait 120 --notemp --rerun-incomplete --cores 16 --keep-going --stats /scratch/daga/Healthy_Donors/RNA_seq/Logs_and_Benchmarks/snakemake.stats --jobs 400 --cluster-config cluster.json --cluster "sbatch -p {cluster.queueSLURM} -J {cluster.name} -A {cluster.group} --cpus-per-task {cluster.nCPUs} --mem {cluster.memory} --time {cluster.maxTime} -o "{cluster.output}" -e "{cluster.error}" --mail-type=FAIL" --local-cores 1


#snakemake -s snakemake_trial --forceall --dag | dot -Tpng > dag1.png
