# ecs replicator

This project provides a Makefile to build a container that can run
the [dynamodb-cross-region-library](https://github.com/awslabs/dynamodb-cross-region-library) process, and
a cloud formation to create a production like set up for running the 
replicator.

The ECS cluster spans two availability zones in a region to provide for
some redundancy (add more zones to suit your comfort level as needed),
and is configured to autolaunch the replicator container if a host or container fails.

To instantiate the template, create an s3 bucket to contain the cloud
formation templates, and use `stage-files.sh` to stage the assets. Then,
deploy the stack using `deploy-stack.sh`

Parameters:

Here's minimum set of parameters to deploy the stack, assuming the use
of defaults. Review the parameters in `replicator.yml` for additional
parameters and their default values.

* BucketRoot - Endpoint path to the staging bucket root, for example something like https://s3.amazonaws.com/foo
* KeyName -  Name of the key pair the ECS cluster instances are launched with
* SourceTable - Source of replicated data
* DestTable - DynamoDB replication target table
* ClusterName - Name to use for the ECS cluster created by the stack
