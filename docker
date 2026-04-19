# Base Image
FROM ubuntu:22.04

# Prevent interactive prompts during package install
ENV DEBIAN_FRONTEND=noninteractive
ENV HOSTNAME=Vortex

# Update + install all required packages in one clean layer
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    wget \
    git \
    sudo \
    docker.io \
    htop \
    btop \
    neovim \
    lsof \
    qemu-system \
    cloud-image-utils \
 && rm -rf /var/lib/apt/lists/*

# Install code-server (VS Code in browser)
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Set working directory
WORKDIR /workspace

# Open port for web access
EXPOSE 7860

# Start code-server without login auth (open access)
CMD ["code-server", "--bind-addr", "0.0.0.0:7860", "--auth", "none"]
