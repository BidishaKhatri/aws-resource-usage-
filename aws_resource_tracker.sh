#!/bin/bash

#################
# Author : Bidisha
# Date : 14th-May
#
#Version: v1
#
#This script will report the aws resource usage
#################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x

# list s3 buckets
echo "Print list of s3 buckets" > resourceTracker
aws s3 ls >> resourceTracker

#list EC2 Instances
echo "Print list of ec2 instances" >> resourceTracker
aws ec2 describe-instances --region ap-southeast-2 | jq -r  '.Reservations[].Instances[].InstanceId' >> resourceTracker

#list lambda
echo "Print list of lambda functions" >> resourceTracker
aws lambda list-functions >>resourceTracker

#list IAM users
echo "Print list of IAM Users" >> resourceTracker
aws iam list-users >> resourceTracker

cat resourceTracker
