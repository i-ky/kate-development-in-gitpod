FROM ubuntu:oracular-20240617

RUN apt-get -q update && \
    apt-get install -yq \
        git \
    && \
    rm -rf /var/lib/apt/lists/*
