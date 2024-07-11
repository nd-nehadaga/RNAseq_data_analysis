library("Rsubread")
library(BiocParallel)

register(MulticoreParam(workers = 16))

data_dir = "/path/to/RNA_seq/bamfile"
bam_file_pattern = ".*bam$"

bam_files = list.files(path = data_dir,pattern = bam_file_pattern,full.names = TRUE)

gtffile <- file.path("/path/to/referenceGenome/", "gencode.v28.primary_assembly.annotation.gtf")

featureCounts_file = featureCounts(files=bam_files,annot.ext=gtffile,
              isGTFAnnotationFile=TRUE,GTF.featureType="exon",GTF.attrType="gene_id",nthreads=16)

saveRDS(object = featureCounts_file,file = "/path/to/out_raw_counts/featureCounts_HC_rnaseq.rds")


