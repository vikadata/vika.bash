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
docker: ## you can run 'make docker DOCKER_HUB_PASSWORD=xxx` to do silent push without prompt
	@if [ "$$DOCKER_HUB_PASSWORD" ]; then\
		echo "DOCKER_HUB_PASSWORD exist";\
	else\
		read -p "Enter the password of hub.docker.com user 'vikadata': " DOCKER_HUB_PASSWORD;\
    fi;\
	VERSION=$(shell cat .version);\
	docker build . --tag vikadata/vika.bash:$$VERSION ;\
	docker build . --tag vikadata/vika.bash:latest ;\
	docker build . --tag ghcr.io/vikadata/vika.bash:$$VERSION ;\
	docker build . --tag ghcr.io/vikadata/vika.bash:latest ;\
	echo $$DOCKER_HUB_PASSWORD | docker login -u vikadata --password-stdin ;\
	docker push vikadata/vika.bash:$$VERSION ;\
	docker push vikadata/vika.bash:latest ;\
	echo $$DOCKER_HUB_PASSWORD | docker login ghcr.io -u vikadata --password-stdin ;\
	docker push ghcr.io/vikadata/vika.bash:$$VERSION ;\
	docker push ghcr.io/vikadata/vika.bash:latest