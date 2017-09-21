#!/bin/bash
set -xeuo pipefail

# snpeffgrch37/snpeffgrch38 and vepgrch37/vepgrch38 are not included in the test, because the build takes too long...

nextflow run . --docker --containers bcftools,concatvcf,fastqc,gatk,htslib,igvtools,mapreads,multiqc,mutect1,picard,qualimap,runallelecount,runascat,runconvertallelecounts,runmanta,samtools,strelka,snpeff,vep
