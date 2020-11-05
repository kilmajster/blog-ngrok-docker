FROM openjdk:16-slim-buster

WORKDIR /home/blog-ngrok-docker
COPY . .
RUN ./mvnw package -P docker

EXPOSE 8080

ENTRYPOINT ["java","-jar","/home/blog-ngrok-docker/target/app.jar"]