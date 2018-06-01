#!/bin/bash

GOARCH=amd64

GOOS=windows
echo "Building for $GOOS $GOARCH"
go build -o bin/win_amd64/aws-mfa

GOOS=darwin
echo "Building for $GOOS $GOARCH"
go build -o bin/osx_amd64/aws-mfa

GOOS=linux
echo "Building for $GOOS $GOARCH"
go build -o bin/linux_amd64/aws-mfa
