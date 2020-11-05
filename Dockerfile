FROM openjdk:11.0.9-slim

WORKDIR /home/blog-ngrok-docker
COPY . .
RUN ./mvnw clean install -Dmaven.test.skip=true -P docker

ENTRYPOINT ["java","-jar","/home/blog-ngrok-docker/target/app.jar"]