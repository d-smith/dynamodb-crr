# dynamodb cross region replication

This project provides cloud formation for deploying dynamodb cross region
replication for a source table to destination table replication
scenario.

The project assumes the use of the [dynamodb-cross-region-library](https://github.com/awslabs/dynamodb-cross-region-library), and provides
some glue to deploy and run the library on an EC2 instance:

* Creates the appropriate role and instance profile for the replication
* Enables to copy of the jar and the command to run the replication process

TODO:

* Run the command as a daemon or via some other mechanism to ensure
the command runs on restart (maybe via auto scale pool of size 1?)