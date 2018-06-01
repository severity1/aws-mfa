#!/bin/bash

APPNAME=aws-mfa
ARCH="amd64"
PLATFORMS=("windows" "darwin" "linux")

for OS in "${PLATFORMS[@]}"
do
  OUT=${APPNAME}
  if [ $OS = "windows" ]; then
        OUT+=".exe"
  fi
    echo "Building ${APPNAME} for ${OS}_${ARCH}"
    env GOOS=${OS} GOARCH=${ARCH} go build -o bin/${OS}_${ARCH}/${OUT}
done
