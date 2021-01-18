# Existing docker image as base

FROM ubuntu:20.04

# Download and install dependency

RUN apt-get update
RUN apt-get update && apt-get install -y python python-dev python-pip \
    libxft-dev libfreetype6 libfreetype6-dev
RUN pip install numpy
RUN pip install matplotlib

# What to do when image starts as container
WORKDIR $DIRPATH
CMD ["rand_plot.py"]
