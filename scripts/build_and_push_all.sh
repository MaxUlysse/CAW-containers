#!/bin/bash
set -xeuo pipefail

nextflow run . --docker --push --containers bcftools,concatvcf,fastqc,gatk,htslib,igvtools,multiqc,mutect1,picard,qualimap,runascat,runconvertallelecounts,samtools,strelka,snpeff,vep

nextflow run . --docker --push --containers mapreads,runallelecount,runmanta,snpeffgrch37,snpeffgrch38,vepgrch37,vepgrch38
