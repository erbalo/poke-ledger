#!/usr/bin/env bash

aws dynamodb create-table \
    --region us-west-2 \
    --endpoint-url http://localhost:8000 \
    --table-name ledger-transactions \
    --attribute-definitions \
        AttributeName=id,AttributeType=S \
        AttributeName=ammount,AttributeType=N \
    --key-schema \
        AttributeName=id,KeyType=HASH \
        AttributeName=ammount,KeyType=RANGE \
    --provisioned-throughput \
        ReadCapacityUnits=5,WriteCapacityUnits=5 \
    --profile alam.test