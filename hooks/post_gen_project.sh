#!/bin/sh

echo "! =========== Post actions =========== !"

wget -O get-pip.py https://bootstrap.pypa.io/get-pip.py
python get-pip.py
python -m pip install chalice