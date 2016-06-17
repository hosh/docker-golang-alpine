user=hosh
app= golang-alpine
version=1.5.4

.PHONY: build shell rm

build:
	docker build $(OPTS) -t $(user)/$(app):$(version) .

push:
	docker push $(user)/$(app):$(version)

default: build
