#!/bin/bash

WORKSPACE=/home/jenkins/jenkins_home/workspace/pipeline-maven
echo "*****************************************************"
echo "*** Building JAR ***"

docker run --rm -it -v /root/.m2:/root/.m2 -v $workspace/java-app:/app -w /app maven:latest $@

