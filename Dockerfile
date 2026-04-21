FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    curl \
    wget \
    git \
    nano \
    python3 \
    python3-pip \
    openssh-server \
    ttyd

# Set root password
RUN echo "root:root" | chpasswd

# Start terminal via web
CMD ttyd -p 7860 bash
