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

# Add group and user
RUN groupadd -g 5000 vmail; useradd -m -d /var/vmail -s /bin/false -u 5000 -g vmail vmail

# Set Permissions
RUN chown vmail:vmail /var/vmail/; chmod 2770 /var/vmail/

VOLUME /etc/dovecot
EXPOSE 143 993