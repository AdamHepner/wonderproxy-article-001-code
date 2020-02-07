#!/usr/bin/env bash

docker build -t customrf .

docker run \
  --rm \
  --volume "$PWD":/home/robot/ \
  customrf:latest \
  --variablefile "env/$ENV.yaml" \
  tests