#!/bin/sh

echo "! =========== Post actions =========== !"

python --version
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
python -m pip install chalice