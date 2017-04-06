FROM golang

ADD . /go/src/github.com/sjoshi6/go-rest-api-boilerplate

RUN go get -u github.com/Masterminds/glide
WORKDIR /go/src/github.com/sjoshi6/go-rest-api-boilerplate

RUN glide install
RUN go install

ENV GO_ENV_PORT=8000
EXPOSE $GO_ENV_PORT

ENTRYPOINT /go/bin/go-rest-api-boilerplate
