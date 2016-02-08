#!/bin/sh

BUILD_VERSION=1.0.0
#BUILD_VERSION=`git describe --always --dirty`
BUILD_DATE=`date +%FT%T%z`

GOOS=darwin;GOARCH=amd64;go build -ldflags "-X main.BuildVersion=$BUILD_VERSION -X main.BuildDate=$BUILD_DATE" -o build/${GOOS}_${GOARCH}/main main.go
GOOS=windows;GOARCH=amd64;go build -ldflags "-X main.BuildVersion=$BUILD_VERSION -X main.BuildDate=$BUILD_DATE" -o build/${GOOS}_${GOARCH}/main main.go
GOOS=windows;GOARCH=386;go build -ldflags "-X main.BuildVersion=$BUILD_VERSION -X main.BuildDate=$BUILD_DATE" -o build/${GOOS}_${GOARCH}/main main.go
GOOS=linux;GOARCH=amd64;go build -ldflags "-X main.BuildVersion=$BUILD_VERSION -X main.BuildDate=$BUILD_DATE" -o build/${GOOS}_${GOARCH}/main main.go
GOOS=linux;GOARCH=386;go build -ldflags "-X main.BuildVersion=$BUILD_VERSION -X main.BuildDate=$BUILD_DATE" -o build/${GOOS}_${GOARCH}/main main.go
GOOS=linux;GOARCH=arm;go build -ldflags "-X main.BuildVersion=$BUILD_VERSION -X main.BuildDate=$BUILD_DATE" -o build/${GOOS}_${GOARCH}/main main.go
