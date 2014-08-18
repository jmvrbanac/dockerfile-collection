# jmvrbanc/mvn-builder
#
# Docker image for building maven projects
# Ubuntu 14.04 (Trusty)
#

FROM ubuntu:latest
MAINTAINER John Vrbanac <john.vrbanac@linux.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update; apt-get install -y maven

RUN mkdir -p /project
WORKDIR /project

VOLUME ['/project']
ENTRYPOINT ["/usr/bin/mvn"]