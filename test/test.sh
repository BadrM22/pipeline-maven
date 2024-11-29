#!/bin/bash

WORKSPACE=/home/jenkins/jenkins_home/workspace/pipeline-maven
echo "*****************************************************"
echo "*** Building JAR ***"
docker run --rm -it -v /root/.m2:/roo/.m2 \
	-v $WORKDIR/java-app:/app -w /app \
	'mvn test'

