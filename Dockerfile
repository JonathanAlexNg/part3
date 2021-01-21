
# Existing docker image as base
FROM ubuntu:20.04


# Download and install dependency
RUN apt-get update
RUN apt-get update && apt-get install -y python3 python3-matplotlib python3-numpy
RUN apt-get install python3-tk


WORKDIR /workspace/repo
COPY rand_plot.py ./

CMD ["python3", "rand_plot.py"]
