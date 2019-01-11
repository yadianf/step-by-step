#!/usr/bin/bash

#last awscli
curl -O https://bootstrap.pypa.io/get-pip.py
python get-pip.py --user
export PATH=~/.local/bin:$PATH
source ~/.bashrc
pip install awscli --upgrade --user
