
FROM ubuntu

MAINTAINER Stephen Pedrosa Eilert <spedrosa@gmail.com>

RUN apt-get update

# RUNLEVEL=1 fools the initscripts to avoid postgresql to be started as soon as it is installed.
RUN RUNLEVEL=1 DEBIAN_FRONTEND=noninteractive apt-get install -y postgresql-9.1

ENV PGDATA /etc/postgresql/9.1/main

ADD pg_hba.conf /etc/postgresql/9.1/main/
ADD pg_ident.conf /etc/postgresql/9.1/main/
ADD postgresql.conf /etc/postgresql/9.1/main/
ADD postgresql-startup.sh /usr/bin/

RUN chmod +x /usr/bin/postgresql-startup.sh

EXPOSE 5432

CMD ["/usr/bin/postgresql-startup.sh"]

# CMD ["/usr/lib/postgresql/9.1/bin/pg_ctl", "start"]

VOLUME /database
