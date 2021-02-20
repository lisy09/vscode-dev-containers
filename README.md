[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](meta/CODE_OF_CONDUCT.md)

# project-template

Origin: https://github.com/lisy09/vscode-dev-containers

This is a project to maintain my language level development environment base using VSCode + VSCode Remote Container for multiple programming langueges.

It is inspired by the [microsoft/vscode-remote-try-*](https://github.com/search?q=org%3Amicrosoft+vscode-remote-try-&type=Repositories) serial projects and add additional features.

## License

See the [LICENSE](LICENSE.md) file for license rights and limitations.

## Contributing

Please check [CONTRIBUTING.md](meta/CONTRIBUTING.md).

## Directory Structure

- `scripts/`: scripts for building/running
- `.env`: env file used in scripts
- `Makefile`: GNU Make Makefile as quick command entrypoint
- `java`/`go`/...: src for building language dev-container

## How to Use

### Prerequisite

- The environment for build needs to be linux/amd64 or macos/amd64
- The environemnt for build needs [docker engine installed](https://docs.docker.com/engine/install/)
- have [docker-compose](https://docs.docker.com/compose/install/) installed
- The environemnt for build needs GNU `make` > 3.8 installed
- The environemnt for build needs `bash` shell

### Build command

To build all docker images locally:
```bash
make all
```

To push built docker images to the remote registry:
```bash
make push
```

To delete built local docker images:
```bash
make clean
```

Or you can check `./Makefile` for more details.