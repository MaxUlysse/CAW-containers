#!/bin/bash
set -xeuo pipefail

nextflow run . --singularity --singularityPublishDir containers/ --containers bcftools,concatvcf,fastqc,gatk,htslib,igvtools,mapreads,multiqc,mutect1,picard,qualimap,runallelecount,runascat,runconvertallelecounts,runmanta,samtools,snpeffgrch37,snpeffgrch38,strelka,vepgrch37,vepgrch38
