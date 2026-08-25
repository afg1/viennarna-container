FROM --platform=linux/amd64 debian:trixie-slim AS builder
RUN apt update && apt install -y build-essential git make wget libopenmpi-dev && rm -rf /var/lib/apt/lists/*


RUN wget https://www.tbi.univie.ac.at/RNA/download/debian/debian_13/viennarna-dev_2.7.2-1_amd64.deb
RUN apt update && apt install -y ./viennarna-dev_2.7.2-1_amd64.deb && rm viennarna-dev_2.7.2-1_amd64.deb