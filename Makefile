VERSION=$(shell git describe --tags --always --dirty --dirty="-dev-test")

PUBLISH_PATH=harbor.policy.
OUTPUT=local-test

all: version

image:
	docker build -t $(PUBLISH_PATH)$(OUTPUT):${VERSION} .

clean:
	go clean && rm -f $(OUTPUT)

version:
	@echo ${VERSION}

.PHONY: build test image clean version publish
