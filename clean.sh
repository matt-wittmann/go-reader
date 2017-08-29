#!/bin/sh

kubectl delete service go-reader
kubectl delete deployment go-reader
docker rmi mattwittmann.com/go-reader:v1
