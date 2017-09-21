#!/bin/bash
set -euo pipefail

# Install libraries
apt-get update
apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    curl \
    libbz2-dev \
    liblzma-dev \
    libncurses5-dev \
    libncursesw5-dev \
    zlib1g-dev
rm -rf /var/lib/apt/lists/*

# Setup ENV variables
HTSLIB_BIN="htslib-1.4.tar.bz2"
HTSLIB_VERSION="1.4"

# Install HTSlib
curl -fsSL https://github.com/samtools/htslib/releases/download/$HTSLIB_VERSION/$HTSLIB_BIN -o /opt/$HTSLIB_BIN
tar xvjf /opt/$HTSLIB_BIN -C /opt/
cd /opt/htslib-$HTSLIB_VERSION
make
make install
rm -rf /opt/$HTSLIB_BIN /opt/htslib-$HTSLIB_VERSION
