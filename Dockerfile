# Existing docker image as base

FROM ubuntu:20.04

# Download and install dependency

RUN apt-get update
RUN apt-get install python

# What to do when image starts as container
WORKDIR “/”
CMD ["redis-server"]
