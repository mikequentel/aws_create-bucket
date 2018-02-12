#!/bin/bash
NAME=$1

if [ -z "${NAME}" ]; then
  echo "Include name for s3 bucket."
  exit 1
fi

aws s3api create-bucket --bucket ${NAME}
aws s3api list-buckets | grep ${NAME}
