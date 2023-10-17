#!/bin/bash
set -e

source buildScript/init/env.sh
mkdir -p $PWD/build/golang
cd $golang

curl -Lso go.tar.gz https://go.dev/dl/go1.21.3.linux-amd64.tar.gz
echo "1241381b2843fae5a9707eec1f8fb2ef94d827990582c7c7c32f5bdfbfd420c8 go.tar.gz" | sha256sum -c -
tar xzf go.tar.gz

go version
go env