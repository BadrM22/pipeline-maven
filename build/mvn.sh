#!/bin/bash

WORKSPACE=/home/jenkins/jenkins_home/workspace/pipeline-maven
echo "*****************************************************"
echo "*** Building JAR ***"
docker run --rm  -v /root/.m2:/root/.m2 \
	-v $WORKSPACE/java-app:/app -w /app \
	'$@'

