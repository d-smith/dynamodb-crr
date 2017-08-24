# dynamodb cross region replication

This project provides cloud formation for deploying dynamodb cross region
replication for a source table to destination table replication
scenario.

The project assumes the use of the [dynamodb-cross-region-library](https://github.com/awslabs/dynamodb-cross-region-library), and provides
some glue to deploy and run the library on an EC2 instance:

To use the template, follow the instructions in the dynamodb-cross-region-library project to create the 
cross region replication jar. Put the jar in a bucket then instantiate
the cloud formation template.

Parameters:

* DestRegion - Region containing the DynamoDB table being replicated to.
* DestTable - DynamoDB replication target table
* InstanceType - EC2 instance type  
* JarBucket - bucket containing the replicator jar as described above
* KeyName - EC2 KeyPair name the replicator instance is launched with
* SourceRegion - Region containing the source table
* SourceTable - Source of replicated data
* SubnetId - Subnet to run the instance in
* VpcId - VPC containing the subnet

Hints:

* Run the replicator in a private subnet. You will only ever need to log into
the replicator instance to troubleshoot or look at the logs.
* Use a jump box/bastion host to access the replicator. Launch the jump box
in a public subnet using the jump box security group that is created with the stack - this will grant you ingress to the replicator instance.

TODO:

* Forward the logs to sumo or cloud watch