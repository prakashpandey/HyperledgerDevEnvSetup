#!/bin/bash

cd /root

mkdir go
cd go

echo "=====>Downloading goland"
wget https://dl.google.com/go/go1.10.2.linux-amd64.tar.gz

GOROOT=/usr/local/go
echo "Installing go at /usr/local/go"
tar -C /usr/local -xzf /root/go/go1.10.2.linux-amd64.tar.gz

echo "Setting GOROOT in /etc/profile"

echo "" >> /etc/profile
echo "#Go installation" >> /etc/profile
echo "GOROOT=/usr/local/go" >> /etc/profile
echo "export GOROOT" >> /etc/profile
echo "PATH=\$GOROOT/bin:\$PATH" >> /etc/profile
echo "export PATH" >> /etc/profile

#Loading variables to current shell
. /etc/profile
