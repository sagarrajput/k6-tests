#!/bin/bash
apt-get install git
eval echo ~$USER
wget https://go.dev/dl/go1.18.2.linux-amd64.tar.gz
chmod 777 *.*
rm -rf /Users/root/go && tar -C /Users/root -xzf go1.18.2.linux-amd64.tar.gz
export PATH=/Users/root/go/bin
$HOME/.profile.
go version
go install go.k6.io/xk6/cmd/xk6@latest
export GOPATH=/Users/root/go/bin
export GOBIN=$GOPATH/bin
export PATH=$GOPATH/bin:$PATH
$HOME/.profile.
echo $GOPATH
cd /Users/root/go/bin
pwd
xk6 build latest \
  --with github.com/grafana/xk6-exec@latest \
  --with github.com/avitalique/xk6-file@latest
./k6 run tests/simple.js