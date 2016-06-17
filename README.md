# Golang 1.5.4 (Alpine)

This is forked from blang/golang-alpine. This specifically builds for Golang 1.5.4-alpine using
the offical Docker image. This image adds git, bzr, hg, and svn so that you can use `go get` for
builds.

## Static linking
```bash
CGO_ENABLED=0 go build -a -installsuffix cgo
```
## Use this docker image

Use this docker container to build your golang project for alpine linux.

For more information, see the original [blog post](https://www.blang.io/posts/2015-04_golang-alpine-build-golang-binaries-for-alpine-linux/) about this topic.

## Usage
Like the base `golang` image

```bash
docker pull hosh/golang-alpine:1.5
```

```bash
docker run --rm -v "$PWD":/go/src/github.com/yourname/yourrepo -w /go/src/github.com/yourname/yourrepo blang/golang-alpine go build -v

docker run --rm -v "$PWD":/go/bin blang/golang-alpine go get github.com/yourname/yourrepo
```

## Build

```
make
```

To push

```
make push
```
