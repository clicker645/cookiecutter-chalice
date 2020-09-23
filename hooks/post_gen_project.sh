#!/bin/sh

echo "! =========== Post actions =========== !"

wget -O get-pip.py https://bootstrap.pypa.io/get-pip.py
python get-pip.py
python -m pip install chalice
python -m pip install boto3

mkdir ~/.aws
printf "[default]\nregion=eu-central-1" >> ~/.aws/config
printf "[default]\naws_access_key_id=AKIAIBBEBQDR2KQHKFYQ\naws_secret_access_key=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" >> ~/.aws/credentials

ls -la ~/.aws/
cat ~/.aws/config
cat ~/.aws/credentials

/tmp/.local/bin/chalice deploy