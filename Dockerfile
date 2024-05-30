# ------------------------
# BUILD
# ------------------------
# Download base image ubuntu 22.04
FROM ubuntu:22.04

# LABEL about the custom image
LABEL maintainer=""
LABEL version="0.1"
LABEL description="This is a custom Docker Image for the Quantum Enumeration Toolkit."

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update

# Install from ubuntu repository
RUN apt install -y wget maude
RUN rm -rf /var/lib/apt/lists/*
RUN apt clean


# Download Tamarin executable
RUN wget -P /home/ https://github.com/tamarin-prover/tamarin-prover/releases/download/1.8.0/tamarin-prover-1.8.0-linux64-ubuntu.tar.gz
RUN tar -xvf /home/tamarin-prover-1.8.0-linux64-ubuntu.tar.gz -C /home/
ENV LANG=C.UTF-8

# ------------------------
# RUN
# ------------------------

# PREPARE TAMARIN SRC FILES
VOLUME /home/src
VOLUME /home/tamarinResults

# ------------------------
# PREPARE LATTICE EXPERIMENTS


CMD /bin/sh -c \
	'for i in /home/src/*.spthy ; \
	do home/tamarin-prover --prove=* "$i" > /home/tamarinResults/$(basename "$i").result ; \
	done;\
	sh' 

#CMD /home/tamarin-prover --prove=exists_session /home/src/KAM-7_LDACS_DHKE_wo_HMAC.spthy > /home/tamarinResults/KAM-7_LDACS_DHKE_wo_HMAC.spthy.result ; sh
