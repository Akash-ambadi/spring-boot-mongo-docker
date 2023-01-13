FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app

#It's copying the jar from jenkins under target directory
COPY /home/ec2-user/workspace/pipeline/target/*.jar /opt/app/spring-boot-mongo.jar

WORKDIR /opt/app

CMD ["java" ,"-jar","./spring-boot-mongo.jar"]
