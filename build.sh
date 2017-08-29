#!/bin/sh

docker build -t mattwittmann.com/go-reader:v1 .

#docker run --publish 8080:8080 --name go-reader --rm mattwittmann.com/go-reader
kubectl run go-reader --image=mattwittmann.com/go-reader:v1 --port=8080
kubectl expose deployment go-reader --type=LoadBalancer
