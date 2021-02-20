# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/master/containers/java/.devcontainer/base.Dockerfile
ARG GOLANG_VERSION=1.15
ARG INSTALL_NODE="false"
FROM mcr.microsoft.com/vscode/devcontainers/go:0-${GOLANG_VERSION}

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends\
    make \
    netcat \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /workspace

USER vscode