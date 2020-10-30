FROM openjdk:8-jdk-alpine

USER 1000

ARG JAR_FILE=backend/target/*.jar

COPY ${JAR_FILE} app.jar

EXPOSE 9977

ENTRYPOINT ["java","-jar","/app.jar"]
