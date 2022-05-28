apt-get install git
wget https://go.dev/dl/go1.18.2.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
$HOME/.profile
go version
go install go.k6.io/xk6/cmd/xk6@latest
./xk6 build latest \
  --with github.com/grafana/xk6-exec@latest \
  --with github.com/avitalique/xk6-file@latest