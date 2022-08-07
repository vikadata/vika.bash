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
	bumpversion patch
