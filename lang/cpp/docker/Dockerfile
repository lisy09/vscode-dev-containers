# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/master/containers/java/.devcontainer/base.Dockerfile
ARG INSTALL_NODE="false"
FROM mcr.microsoft.com/vscode/devcontainers/cpp:0-buster

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends\
    make \
    netcat \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /workspace

USER vscode