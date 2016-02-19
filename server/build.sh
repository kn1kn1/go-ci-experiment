#!/bin/sh

BUILD_VERSION=1.0.0
#BUILD_VERSION=`git describe --always --dirty`
BUILD_DATE=`date +%FT%T%z`

SRC_DIR=.
OUT_DIR=bin

mkdir $OUT_DIR
export GOOS=darwin;export GOARCH=amd64;go build -ldflags "-X main.BuildVersion=$BUILD_VERSION -X main.BuildDate=$BUILD_DATE" -o ${OUT_DIR}/${GOOS}_${GOARCH}/main ${SRC_DIR}/main.go
export GOOS=windows;export GOARCH=amd64;go build -ldflags "-X main.BuildVersion=$BUILD_VERSION -X main.BuildDate=$BUILD_DATE" -o ${OUT_DIR}/${GOOS}_${GOARCH}/main ${SRC_DIR}/main.go
export GOOS=windows;export GOARCH=386;go build -ldflags "-X main.BuildVersion=$BUILD_VERSION -X main.BuildDate=$BUILD_DATE" -o ${OUT_DIR}/${GOOS}_${GOARCH}/main ${SRC_DIR}/main.go
export GOOS=linux;export GOARCH=amd64;go build -ldflags "-X main.BuildVersion=$BUILD_VERSION -X main.BuildDate=$BUILD_DATE" -o ${OUT_DIR}/${GOOS}_${GOARCH}/main ${SRC_DIR}/main.go
export GOOS=linux;export GOARCH=386;go build -ldflags "-X main.BuildVersion=$BUILD_VERSION -X main.BuildDate=$BUILD_DATE" -o ${OUT_DIR}/${GOOS}_${GOARCH}/main ${SRC_DIR}/main.go
export GOOS=linux;export GOARCH=arm;go build -ldflags "-X main.BuildVersion=$BUILD_VERSION -X main.BuildDate=$BUILD_DATE" -o ${OUT_DIR}/${GOOS}_${GOARCH}/main ${SRC_DIR}/main.go
