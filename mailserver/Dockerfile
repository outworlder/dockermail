
FROM ubuntu

MAINTAINER Stephen Pedrosa Eilert <spedrosa@gmail.com>

# Enabling all optional repositories
RUN echo "deb http://archive.ubuntu.com/ubuntu precise restricted universe multiverse" > /etc/apt/sources.list.d/extra-repos.list

# Install postfix and dovecot
RUN apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install postfix postfix-pgsql dovecot-core dovecot-imapd dovecot-pgsql dovecot-lmtpd

VOLUME /decrypted-mail
