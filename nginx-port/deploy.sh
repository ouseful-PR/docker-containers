#!/bin/bash

ORGANIZATION=vangjee
REPOSITORY=nginx-port
VERSION=rpi
IMAGEID=$(docker images | awk -v repo="$REPOSITORY" -v tag="local" 'index($1, repo) && index($2, tag) {print $3}')

echo ${IMAGEID}

docker tag ${IMAGEID} ${ORGANIZATION}/${REPOSITORY}:${VERSION}

docker push ${ORGANIZATION}/${REPOSITORY}:${VERSION}