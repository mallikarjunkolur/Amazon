FROM ubuntu:24.04
#install java-21
RUN apt-get update -y && \
    apt-get install openjdk-21-jdk wget  gnupg ca-certificates -y
WORKDIR /jenkins
#create keyring directory
RUN mkdir -p /etc/apt/keyrings
#download jenkins GPG key
RUN wget -O /etc/apt/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
#add jenkins repo
RUN echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" \
    > /etc/apt/sources.list.d/jenkins.list
#install jenkins
RUN apt-get update -y && \
    apt-get install jenkins -y
EXPOSE 8080
#start jenkins
ENTRYPOINT java -jar /usr/share/java/jenkins.war




