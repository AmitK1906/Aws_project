#!/bin/bash
#AWS resource
#Date: 30 Jan 2025

set -x
#AWS S3
aws s3 ls &> /home/devil/Desktop/Data.txt
date -u  &>> /home/devil/Desktop/Data.txt 

#AWS EC2
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' &>> /home/devil/Desktop/Data.txt
date -u & >> /home/devil/Desktop/Data.txt

#AWS lambda
aws lambda list-functions  &>> /home/devil/Desktop/Data.txt
date -u & >> /home/devil/Desktop/Data.txt

#AWS IAM users
aws iam list-users   &>> /home/devil/Desktop/Data.txt
date -u & >> /home/devil/Desktop/Data.txt

