#!/bin/bash
apt-get install git
eval echo ~$USER
wget https://go.dev/dl/go1.18.2.linux-amd64.tar.gz
chmod 777 *.*
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz
export PATH=/usr/local/go/bin
go version
go install go.k6.io/xk6/cmd/xk6@latest
export GOPATH=/usr/local/go/bin
export PATH=$GOPATH/bin:$PATH
bash --login
source .bash_profile
cd /usr/local/go
pwd
xk6 build latest \
  --with github.com/grafana/xk6-exec@latest \
  --with github.com/avitalique/xk6-file@latest
./k6 run tests/simple.js