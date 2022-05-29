#!/bin/bash
apt-get install git
eval echo ~$USER
wget https://go.dev/dl/go1.18.2.linux-amd64.tar.gz
chmod 777 *.*
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin