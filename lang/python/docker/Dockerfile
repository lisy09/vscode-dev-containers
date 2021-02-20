# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/master/containers/java/.devcontainer/base.Dockerfile
ARG PYTHON_VERSION=3.9
ARG INSTALL_NODE="false"
FROM mcr.microsoft.com/vscode/devcontainers/python:0-${PYTHON_VERSION}

# [Optional] If your pip requirements rarely change, uncomment this section to add them to the image.
COPY requirements.txt /tmp/pip-tmp/
RUN pip3 --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt \
   && rm -rf /tmp/pip-tmp

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends\
    make \
    netcat \
    # for sonarlint plugin
    openjdk-11-jdk \ 
    && rm -rf /var/lib/apt/lists/*
ARG TARGETARCH=amd64
ENV TARGETARCH=${TARGETARCH} \
    JAVA_HOME=/usr/lib/jvm/java-11-openjdk-${TARGETARCH}
WORKDIR /workspace

USER vscode