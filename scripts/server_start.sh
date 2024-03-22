#!/usr/bin/env bash
sudo yum update
sudo yum install java-17-amazon-corretto-devel -y
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.87/bin/apache-tomcat-9.0.87.tar.gz
sudo tar -xvf apache-tomcat-9*.tar.gz
sudo mv apache-tomcat-9.0.87 /usr/local/tomcat
sudo sh /usr/local/tomcat/bin/shutdown.sh
sudo sh /usr/local/tomcat/bin/startup.sh
sudo mv /home/ec2-user/server/webapp.war /usr/local/tomcat/webapps
