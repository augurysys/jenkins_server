FROM jenkins
# if we want to install via apt

ARG user=jenkins
ARG group=jenkins
ARG uid=1000
ARG gid=1000
ARG http_port=8080
ARG agent_port=50000


USER root
RUN apt-get update && apt-get install -y git curl
USER jenkins


# Set Defaults
#ENV JENKINS_HOME /Users/ramzihosisey/jenkins

ENV JAVA_OPTS="-Xmx7048m -XX:MaxPermSize=10048m -Djava.awt.headless=true -Dhudson.model.DirectoryBrowserSupport.CSP= -Dorg.apache.commons.jelly.tags.fmt.timeZone=Asia/Jerusalem"
ENV JENKINS_OPTS="--handlerCountStartup=100 --handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log  --webroot=/var/cache/jenkins/war"


COPY plugins.txt /usr/share/jenkins/ref/
#COPY custom.groovy /usr/share/jenkins/ref/init.groovy.d/custom.groovy
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt

