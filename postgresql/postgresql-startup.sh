#!/bin/sh

chown -R postgres:postgres /database
chmod -R 700 /database

su postgres -c '/usr/lib/postgresql/9.1/bin/pg_ctl start'
