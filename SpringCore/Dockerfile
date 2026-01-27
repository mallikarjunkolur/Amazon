FROM ubuntu:22.04
RUN apt-get update -y && \
    apt-get install openjdk-17-jdk wget tar -y
RUN mkdir /myapp
WORKDIR /myapp
COPY SpringCore-1.0-SNAPSHOT.jar /myapp/
EXPOSE 8080
CMD ["java", "-jar", "SpringCore-1.0-SNAPSHOT.jar "]



