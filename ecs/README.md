# ecs replicator

This directory provides a Makefile to build a container that can run
the [dynamodb-cross-region-library](https://github.com/awslabs/dynamodb-cross-region-library) process, and
a cloud formation to create a production like set up for running the 
replicator.

The ECS cluster spans two availability zones in a region to provide for
some redundancy (add more zones to suit your comfort level as needed),
and is configured to autolaunch the replicator container if a host or container fails.