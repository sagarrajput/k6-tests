#!/bin/bash
apt-get install git
eval echo ~$USER
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source /usr/local/.gvm/scripts/gvm
gvm install go1.18.2