# Use the official Ubuntu 20.04 image as a base
FROM ubuntu:20.04

# Set environment variables for non-interactive installation
ENV DEBIAN_FRONTEND noninteractive

# Update the package list and install necessary packages
RUN apt-get update && \
  apt-get install -y postgresql postgresql-contrib && \
  rm -rf /var/lib/apt/lists/*
RUN apt-get update && \
  apt install -y vim lsof net-tools dos2unix

COPY sql /var/local/sql

# Set the PostgreSQL environment variables
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_DB dellstore2

ADD start.sh /usr/local/bin/start.sh
RUN chmod a+x /usr/local/bin/start.sh
RUN dos2unix /usr/local/bin/start.sh
# Expose the PostgreSQL port
EXPOSE 5432
USER postgres

# I got this error exec: "/usr/local/bin/start.sh": permission denied

ENTRYPOINT ["/usr/local/bin/start.sh"]

# Start PostgreSQL server
# CMD [ "tail", "-f", "/dev/null" ]
