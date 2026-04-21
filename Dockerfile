FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    bash \
    curl \
    sudo \
    python3 \
    python3-pip \
    git

WORKDIR /app

CMD ["bash"]
