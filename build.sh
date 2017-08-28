#!/bin/sh

docker build -t mattwittmann.com/go-reader .

docker run --publish 8080:8080 --name go-reader --rm mattwittmann.com/go-reader
