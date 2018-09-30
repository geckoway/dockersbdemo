FROM openjdk:8-jdk-alpine
MAINTAINER wangchun wangchun@163.com
VOLUME /tmp
ARG JAR_FILE=docker-sb-demo.jar
COPY ${JAR_FILE} /app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]