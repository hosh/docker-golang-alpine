FROM golang:1.5.4-alpine
MAINTAINER Ho-Sheng Hsiao <talktohosh@gmail.com>
RUN apk -u -U add bash bzr git mercurial subversion openssh-client ca-certificates
