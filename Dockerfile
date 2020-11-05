FROM openjdk:11.0.9-slim

WORKDIR /home/blog-ngrok-docker
COPY . .
RUN ./mvnw package -P docker

ENTRYPOINT ["java","-jar","/home/blog-ngrok-docker/target/app.jar"]