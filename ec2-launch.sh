#!/bin/bash
ami=ami-1ee65166

if [ "$ami" ==  "ami-1ee60166" ]
then
aws ec2 run-instances --image-id  $ami --count 1 --instance-type t2.micro --key-name new-key --region us-west-2
else
echo " The only supported ami is ami-1ee65166 and region is us-west-2"
exit 1
fi
