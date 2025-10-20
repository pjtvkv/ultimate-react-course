FROM node:20-bookworm

# Install system packages required by build tooling used across the course
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    git \
    python3 \
    make \
    g++ \
  && rm -rf /var/lib/apt/lists/*

# Enable Corepack so Yarn and pnpm can be activated on demand
RUN corepack enable

WORKDIR /workspace

# Default to an interactive shell so you can run the individual projects as needed
CMD ["bash"]
