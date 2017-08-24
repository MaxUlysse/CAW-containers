#!/bin/bash -xl
#SBATCH -A a2012043 
#SBATCH -p node
#SBATCH -t 168:00:00


set -xeuo pipefail
module load Nextflow
#export NXF_HOME=/home/szilva/dev/CAW-containers
#export NXF_TEMP=/home/szilva/dev/CAW-containers
#export NXF_LAUNCHBASE=/home/szilva/dev/CAW-containers
export NXF_OPTS="-Xms1g -Xmx4g"
#export NXF_WORKDIR=/home/szilva/dev/CAW-containers/work
export SINGULARITY_DISABLE_CACHE=yes
for f in bcftools concatvcf fastqc freebayes gatk htslib igvtools mapreads multiqc mutect1 picard qualimap runallelecount runascat runconvertallelecounts runmanta samtools snpeff strelka vep; do
	nextflow run SciLifeLab/CAW-containers --singularity --containers $f --singularityPublishDir containers/
done
