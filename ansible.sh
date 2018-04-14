#!/usr/bin/env bash

WORKDIR=$(pwd -P)

docker run \
       -it \
       --rm \
       -v $(pwd):/$(basename $(pwd)) \
       -v ${HOME}/.ssh:/root/.ssh \
       -v ${HOME}/.boo:/root/.boo \
       dbriones/ansible:latest \
       ssh-agent bash
