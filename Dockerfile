FROM golang:1.9

ADD . /go/src/mattwittmann.com/go-reader

RUN go install mattwittmann.com/go-reader

ENTRYPOINT /go/bin/go-reader

EXPOSE 8080
