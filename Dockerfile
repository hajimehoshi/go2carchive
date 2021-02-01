FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
        gcc-10-aarch64-linux-gnu \
        gcc-10-multilib \
        xz-utils \
        wget

RUN wget -O go.tar.gz https://dl.google.com/go/go1.15.7.linux-amd64.tar.gz && \	
        tar -C /usr/local -xzf go.tar.gz && \	
        rm go.tar.gz	
ENV PATH "/usr/local/go/bin:${PATH}"

WORKDIR /work
