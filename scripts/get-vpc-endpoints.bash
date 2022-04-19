#!/usr/bin/env bash

# ./script us-east-1 -> should be the region of your aws-cli client
# returns the services that are accessible to your region to your VPC/ec2 instance

aws ec2 describe-vpc-endpoint-services | awk -F "$1\." "/- com/ {print \$2}" 
