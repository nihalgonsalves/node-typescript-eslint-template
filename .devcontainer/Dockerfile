FROM mcr.microsoft.com/devcontainers/javascript-node:20

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -fsSL https://get.docker.com | sh && rm -rf /var/lib/apt/lists/*
RUN usermod -aG docker node && newgrp docker

RUN corepack enable