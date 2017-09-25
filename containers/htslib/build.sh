#!/bin/ash
set -euo pipefail

HTSLIB_VERSION=1.4
apk --update add wget ca-certificates zlib-dev libbz2 bzip2-dev xz-dev xz-libs build-base
mkdir /build
cd /build
wget --quiet -O htslib.tar.bz2 https://github.com/samtools/htslib/releases/download/$HTSLIB_VERSION/htslib-${HTSLIB_VERSION}.tar.bz2
tar xf htslib.tar.bz2
cd htslib-$HTSLIB_VERSION
make
make install prefix=/usr

apk del wget ca-certificates zlib-dev bzip2-dev xz-dev build-base
rm -rf /var/cache/apk/*
cd /
rm -rf /build
