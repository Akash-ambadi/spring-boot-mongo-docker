FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

#It's copying the jar from jenkins under target directory
COPY /home/ec2-user/*.jar $PROJECT_HOME/remoting.jar

WORKDIR $PROJECT_HOME

CMD ["java" ,"-jar","./remoting.jar"]
