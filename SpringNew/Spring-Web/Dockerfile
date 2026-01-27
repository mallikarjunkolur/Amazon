FROM ubuntu:22.04
RUN apt-get update -y && \
    apt-get install openjdk-17-jdk wget tar -y 
RUN mkdir /tomcat 
WORKDIR /tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.115/bin/apache-tomcat-9.0.115.tar.gz && \
    tar -xvzf apache-tomcat-9.0.115.tar.gz && \
    mv apache-tomcat-9.0.115 tomcat && \
    rm -rf apache-tomcat-9.0.115.tar.gz
COPY Spring-Web.war /tomcat/tomcat/webapps/
EXPOSE 8080
ENTRYPOINT ["/tomcat/tomcat/bin/catalina.sh","run"]
