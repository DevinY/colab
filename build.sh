#!/bin/bash
if [ ! -d osshd ]; then
git clone https://github.com/DevinY/osshd.git
fi
if [ ! -d novnc ]; then
git clone https://github.com/DevinY/novnc.git
fi
touch authorized_keys
cd osshd
docker build \
--no-cache \
--build-arg uid=$(id -u) \
--build-arg gid=$(id -g) \
--build-arg user=colab \
-t colabssh \
.
cd ../novnc
docker build -t colabnovnc .
