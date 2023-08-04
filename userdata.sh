#!/bin/bash
yum update -y
yum install -y docker
systemctl start docker
systemctl enable docker

# install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# install jenkins
docker run -d -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts

# install nginx
yum install -y epel-release
yum install -y nginx
systemctl start nginx
systemctl enable nginx
