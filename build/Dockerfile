FROM meddream/jdk17:latest
WORKDIR /app
COPY /home/jenkins/jenkins_home/workspace/pipeline-maven/java-app/target/*.jar ./app.jar
CMD java -jar /app/app.jar
