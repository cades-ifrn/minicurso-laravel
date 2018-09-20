#!/bin/bash

set -e

mkdir -p $HOME/.local/bin

curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o $HOME/.local/bin/docker-compose

chmod +x $HOME/.local/bin/docker-compose

if [[ -z $(grep "export PATH=\$PATH:\$HOME/.local/bin" $HOME/.bashrc) ]]; then
  echo "export PATH=\$PATH:\$HOME/.local/bin" >> $HOME/.bashrc
fi
