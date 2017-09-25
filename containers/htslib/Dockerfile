FROM alpine:3.6

LABEL author="Maxime Garcia" \
description="HTSlib 1.4 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

ADD build.sh /
RUN /build.sh

# Create UPPMAX directories
RUN mkdir /pica /proj /sw
