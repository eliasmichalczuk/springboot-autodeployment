#!/usr/bin/env bash
echo build docker image
DOCKER_REPO=`aws ecr describe-repositories --repository-names "jenkins-test-repo" | grep repositoryUri | cut -d "\"" -f 4`
docker build — no-cache -t ${DOCKER_REPO}:1.0 .
docker push ${DOCKER_REPO}:1.0
