FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

#It's copying the jar from jenkins under target directory
COPY /home/ec2-user/workspace/pipeline/target/*.jar $PROJECT_HOME/spring-boot-mongo.jar

WORKDIR $PROJECT_HOME

CMD ["java" ,"-jar","./spring-boot-mongo.jar"]
