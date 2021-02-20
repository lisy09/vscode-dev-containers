ROOT_DIR=${PWD}
SCRIPTS_DIR = ${ROOT_DIR}/scripts

.PHONY: all
all: incremental-tasks alway-run-tasks

.PHONY: incremental-tasks
incremental-tasks: docker-images

.PHONY: alway-run-tasks  
alway-run-tasks: 

.PHONY: docker-images
docker-images: base

.PHONY: base
base:
	$(SCRIPTS_DIR)/build_base.sh