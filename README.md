# Introduction

In this tutorial, we’ll learn how to install PostgreSQL with Docker. Generally, we run a Docker container using the public Docker image. Similarly, we can pull preconfigured Docker images of the PostgreSQL database server from Docker Hub. We’ll also demonstrate how PostgreSQL can be installed, configured, and run on Docker.

The docker_postgres package allowseg you to define a Dockerfile in a YAML file. The YAML file specifies the services that make up the application, the Docker images that will be used to create the services, and the configuration options for the services.

This Dockerfile will create an image with PostgreSQL installed and will start the PostgreSQL server when a container is run from the image. The PostgreSQL user, password, and database can be customized by changing the values of the POSTGRES_USER, POSTGRES_PASSWORD, and POSTGRES_DB environment variables.

## Docker

Each project should have a Dockerfile that can be used to get the project running for development, demo and testing.

## Nodejs

Node.js is a JavaScript framework and a runtime environment that runs JavaScript code outside the web browser. All of our projects should init by `npm init -y` from this command we will get the package.json which is we add a block of code to start/stop the project by running `npm run build/ npm run start`/`npm run stop`.

Download file from container to Host
docker cp postgresql-u20:/etc/postgresql/12/main/postgresql.conf config

docker ps -a | grep "pattern" | awk '{print $1}' | xargs docker rm
