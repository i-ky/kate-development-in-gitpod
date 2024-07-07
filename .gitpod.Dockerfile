FROM ubuntu:oracular-20240617

RUN apt-get -q update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -yq \
        git \
        gpg-agent \
        gpgsm \
        sudo \
        tzdata \
    && \
    rm -rf /var/lib/apt/lists/*

ENV PATH=/workspace/kde/src/kdesrc-build:${PATH}
