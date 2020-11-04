FROM openjdk:11.0.9-slim

RUN echo "Installing git\n"
RUN apt-get update && apt-get install -y git

RUN echo "Cloming repository into /home/blog-ngrok-docker directory\n"
RUN git clone https://github.com/kilmajster/blog-ngrok-docker.git /home/blog-ngrok-docker

RUN echo "Building with maven\n"
RUN cd /home/blog-ngrok-docker && pwd && ls -al && mvnw clean install -Dmaven.test.skip=true

RUN echo "Starting app!\n"
ENTRYPOINT ["java","-jar","/blog-ngrok-dockerarget/target/blog-ngrok-docker-1.0.jar"]