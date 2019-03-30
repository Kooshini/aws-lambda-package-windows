#!/bin/bash
mkdir -p /lambda/zip /lambda/upload
pip3 install -r requirements.txt -t /lambda/upload
rm -rf /lambda/zip/* /lambda/upload/Dockerfile /lambda/upload/*.txt /lambda/upload/*.sh /lambda/upload/*.md
cp -r /app/* /lambda/upload
cd /lambda/upload
zip -r /lambda/zip/lambda.zip *