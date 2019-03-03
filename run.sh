#!/usr/bin/env bash

docker run \
  --rm \
  --volume "$PWD/tests":/home/robot/tests \
  --volume "$PWD/results":/home/robot/results \
  robotframework/rfdocker:latest \
  tests