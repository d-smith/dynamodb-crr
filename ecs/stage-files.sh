#!/bin/bash

export DEPLOY_BUCKET=admin-doug-deploy-us-east-1

for f in *.y*ml; do aws s3 cp $f s3://$DEPLOY_BUCKET; done