#!/bin/bash

# File starts with zzz because scripts are run in alphabetical order and I want this run last

# For use with heavy queries
/etc/init.d/postgresql start
psql -c "CREATE DATABASE ${POSTGRES_DB} WITH ENCODING 'UTF-8';"
psql -d ${POSTGRES_DB} -f /var/local/sql/dellstore2-normal-1.0.sql
tail -f /dev/null