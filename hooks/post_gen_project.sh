#!/bin/sh

echo "! =========== Post actions =========== !"

wget -O get-pip.py https://bootstrap.pypa.io/get-pip.py
python get-pip.py
python -m pip install chalice

mkdir ~/.aws
touch ~/.aws/config

printf "[default]/naws_access_key_id=AKIAIBBEBQDR2KQHKFYQ/naws_secret_access_key=ghaXmQgLwh+DAYnlxt3efQBExDNSudWnuWhGzrbu/nregion=eu-central-1" >> ~/.aws/config

/tmp/.local/bin/chalice deploy