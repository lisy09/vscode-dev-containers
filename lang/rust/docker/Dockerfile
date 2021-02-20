# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/master/containers/java/.devcontainer/base.Dockerfile
ARG RUST_VERSION=1.50
ARG INSTALL_NODE="false"
FROM mcr.microsoft.com/vscode/devcontainers/rust:0-${RUST_VERSION}

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends\
    make \
    netcat \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /workspace

USER vscode