FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install basic VPS tools
RUN apt update && apt install -y \
    ttyd \
    curl \
    wget \
    git \
    nano \
    vim \
    neofetch \
    htop \
    python3 \
    python3-pip \
    nodejs \
    npm \
    tmux \
    screen \
    && apt clean

# Expose port
EXPOSE 7860

# Start web terminal
CMD ["ttyd", "-p", "7860", "bash"]
