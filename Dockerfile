FROM openjdk:11.0.9-slim

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar



CMD git clone https://github.com/kilmajster/ngrok-spring-boot-starter.git



ENTRYPOINT ["java","-jar","/app.jar"]