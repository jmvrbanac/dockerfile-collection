# jmvrbanc/dovecot
#
# Base Docker image for running a Dovecot imap server on
# Ubuntu 14.04 (Trusty)
#

FROM ubuntu:trusty
MAINTAINER John Vrbanac <john.vrbanac@linux.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y dovecot-imapd dovecot-managesieved dovecot-antispam dovecot-sqlite

VOLUME /etc/dovecot