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
docker:
	docker build . --tag vikadata/vika.bash; \
	read -p "Enter the password of hub.docker.com user 'vikadata':" DOCKER_PASSWORD ;\
	echo $$DOCKER_PASSWORD | docker login -u vikadata --password-stdin ;\
	docker push vikadata/vika.bash