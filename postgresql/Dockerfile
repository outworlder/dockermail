
FROM ubuntu

MAINTAINER Stephen Pedrosa Eilert <spedrosa@gmail.com>

RUN apt-get update

RUN apt-get install -y postgresql-9.1

ADD pg_hba.conf /etc/postgresql/9.1/main/
ADD pg_ident.conf /etc/postgresql/9.1/main/
ADD postgresql.conf /etc/postgresql/9.1/main

VOLUME /var/lib/postgresql/9.1/main

USER postgres

ENTRYPOINT ["/usr/bin/pgsql"]

EXPOSE 5432

CMD ["/usr/bin/postgresql"]
