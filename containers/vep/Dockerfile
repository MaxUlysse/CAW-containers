FROM ubuntu:16.04

LABEL author="Maxime Garcia" \
description="VEP 90.1 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

# Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
build-essential \
ca-certificates \
cpanminus \
curl \
git \
libmysqlclient-dev \
libpng12-dev \
libssl-dev \
mysql-client \
perl \
perl-base \
unzip \
&& rm -rf /var/lib/apt/lists/* \
&& cpanm DBI DBD::mysql Set::IntervalTree PerlIO::gzip

# Setup ENV variables
ENV PATH="$PATH:/ensembl-vep" \
VEP_VERSION="release/90.1"

# Install VEP
RUN git clone https://github.com/Ensembl/ensembl-vep.git ensembl-vep \
--branch $VEP_VERSION \
&& cd ensembl-vep \
&& perl INSTALL.pl

# Create UPPMAX directories
RUN mkdir /pica /proj /sw
