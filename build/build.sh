#!/bin/bash
#
WORKSPACE=/home/jenkins/jenkins_home/workspace/pipeline-maven
echo "*********************************************************"
echo "** Building docker image **"
docker compose build --no-cache
echo "*********************************************************"
