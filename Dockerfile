FROM openjdk:11.0.9-slim

RUN echo "Installing git & maven\n"
RUN apt-get update && apt-get install -y git maven

RUN echo "Cloming repository into / directory\n"
RUN git clone https://github.com/kilmajster/blog-ngrok-docker.git /

RUN echo "Building with maven\n"
RUN mvn clean install -Dmaven.test.skip=true

RUN echo "Starting app!\n"
ENTRYPOINT ["java","-jar","target/blog-ngrok-docker-1.0.jar"]