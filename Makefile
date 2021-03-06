ROOT_DIR=${PWD}
SCRIPTS_DIR = ${ROOT_DIR}/scripts

.PHONY: all
all: incremental-tasks alway-run-tasks

.PHONY: incremental-tasks
incremental-tasks: docker-images push

.PHONY: alway-run-tasks  
alway-run-tasks: 

.PHONY: docker-images
docker-images: 
	$(SCRIPTS_DIR)/build_docker_images.sh

.PHONY: push
push: 
	$(SCRIPTS_DIR)/push_docker_images.sh