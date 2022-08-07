.DEFAULT_GOAL := build

.PHONY: init
init:
	docker run --rm -it --user $(id -u):$(id -g) -v "$(shell pwd):/app" dannyben/bashly init

.PHONY: test
test:
	@cd test && ./test.sh

# alias bashly='docker run --rm -it --user $(id -u):$(id -g) --volume "$PWD:/app" dannyben/bashly'
.PHONY: build
build:
	docker run --rm -it --user $(id -u):$(id -g) -v "$(shell pwd):/app" dannyben/bashly generate

.PHONY: bumpversion
bumpversion:
	docker run --rm -it --user $(id -u):$(id -g) -v "$(shell pwd):/app" vikadata/bumpversion bumpversion patch

.PHONY: docker
docker: ## you can run 'DOCKER_HUB_PASSWORD=xxx make docker` to do silent push without prompt
	docker build . --tag vikadata/vika.bash 
ifndef DOCKER_HUB_PASSWORD
	@read -p "Enter the password of hub.docker.com user 'vikadata': " DOCKER_HUB_PASSWORD 
endif
	echo $$DOCKER_HUB_PASSWORD | docker login -u vikadata --password-stdin ;\
	docker push vikadata/vika.bash