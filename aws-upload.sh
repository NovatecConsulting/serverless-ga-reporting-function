#!/usr/bin/env bash
aws cloudformation package --template-file sam.yaml --output-template-file output-sam.yaml --s3-bucket aqe-serverless-ga-reporting-function
aws cloudformation deploy --template-file output-sam.yaml --stack-name ServerlessGoogleAnaliticsReport --capabilities CAPABILITY_IAM