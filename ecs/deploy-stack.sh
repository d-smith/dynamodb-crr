#!/bin/bash

aws cloudformation create-stack --stack-name replicator \
--template-body file://replicator.yml --parameters \
ParameterKey=BucketRoot,ParameterValue=https://s3.amazonaws.com/admin-doug-deploy-us-east-1 \
ParameterKey=KeyName,ParameterValue=FidoKeyPair \
ParameterKey=SourceTable,ParameterValue=serverless-rest-api-with-dynamodb-hc1 \
ParameterKey=DestTable,ParameterValue=serverless-rest-api-with-dynamodb-hc1 \
ParameterKey=ClusterName,ParameterValue=CharlieFoxtrot \
--capabilities CAPABILITY_IAM