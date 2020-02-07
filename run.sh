#!/usr/bin/env bash

docker build -t customrf .

docker run \
  --rm \
  --volume "$PWD":/home/robot/ \
  -e ENV="$ENV" \
  customrf:latest \
  --variablefile "env/$ENV.yaml" \
  --pythonpath "resources/" \
  tests