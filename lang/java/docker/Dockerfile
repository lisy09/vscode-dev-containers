# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/master/containers/java/.devcontainer/base.Dockerfile
ARG JAVA_VERSION=8
ARG INSTALL_NODE="false"
FROM mcr.microsoft.com/vscode/devcontainers/java:0-${JAVA_VERSION}

# Install Maven or Gradle
ARG MAVEN_VERSION=3.6.3
ARG GRADLE_VERSION=6.8
RUN su vscode -c "source /usr/local/sdkman/bin/sdkman-init.sh && sdk install maven \"${MAVEN_VERSION}\"" \
    && su vscode -c "source /usr/local/sdkman/bin/sdkman-init.sh && sdk install gradle \"${GRADLE_VERSION}\"" 

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends\
    make \
    netcat \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /workspace

USER vscode