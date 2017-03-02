FROM alpine
LABEL maintainer "marc@malexandre.fr"

RUN apk update && apk add git g && rm -rf /var/cache/apk/*
RUN mkdir -p /code/golibs

ENV GOPATH /code/golibs

ADD . /code
WORKDIR /code
