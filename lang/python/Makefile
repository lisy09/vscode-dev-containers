ROOT_DIR=${PWD}
SCRIPTS_DIR = ${ROOT_DIR}/scripts

ifneq (,$(wildcard ./.env))
    include .env
    export
endif

.PHONY: all
all: incremental-tasks alway-run-tasks

.PHONY: incremental-tasks
incremental-tasks: docker-images push

.PHONY: alway-run-tasks  
alway-run-tasks: 

.PHONY: docker-images
docker-images: base

.PHONY: base
base:
	$(SCRIPTS_DIR)/build_base.sh
	
.PHONY: push
push: 
	$(SCRIPTS_DIR)/push_docker_images.sh
	
.PHONY: clean
clean: delete-docker-images

.PHONY: delete-docker-images
delete-docker-images: 
	$(SCRIPTS_DIR)/delete_local_images.sh

.PHONY: test-local
test-local: 
	pytest tests/ 

.PHONY: run-local
run-local: 
	python -m ${RUN_ENTRYPOINT}

