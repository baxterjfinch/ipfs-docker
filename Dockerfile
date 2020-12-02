
FROM ubuntu:latest

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://dist.ipfs.io/go-ipfs/v0.4.18/go-ipfs_v0.4.18_linux-amd64.tar.gz
RUN tar xvfz go-ipfs_v0.4.18_linux-amd64.tar.gz

WORKDIR go-ipfs
RUN ./install.sh
