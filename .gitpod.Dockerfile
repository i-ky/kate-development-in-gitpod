FROM ubuntu:oracular-20240617

RUN apt-get -q update && \
    apt-get install -yq \
        git \
        sudo \
    && \
    rm -rf /var/lib/apt/lists/*

ENV PATH=/workspace/kde/src/kdesrc-build:${PATH}
