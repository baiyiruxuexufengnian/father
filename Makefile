VERSION=$(shell git describe --tags --always --dirty --dirty="-dev")

PUBLISH_PATH=harbor.policy/test/
OUTPUT=local-test

all: version

image:
	docker build -t $(PUBLISH_PATH)$(OUTPUT):${VERSION} .

clean:
	go clean && rm -f $(OUTPUT)

push:
	echo 'push image: $(PUBLISH_PATH)$(OUTPUT):${VERSION} to hub repository'

version:
	@echo ${VERSION}

.PHONY: build test image clean version publish
