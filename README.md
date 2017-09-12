## Synopsis

Building projects and 
Running tests to detect bugs and other issues as soon as they are introduced
Static code analysis
Deployment


## Installation
 
 before building and running the docker :
 
1. clone the jenkins server home dir from https://github.com/augurysys/jenknis-server-home-dir on the host

2. open jenkins server port (8080 in this example)

## Quick reference
Where to get help:

Where to file issues:
https://github.com/cloudbees/jenkins-ci.org-docker/issues

Image updates:
official-images PRs with label library/jenkins
official-images repo's library/jenkins file (history)

Source of this description:
docs repo's jenkins/ directory (history)

Supported Docker versions:
the latest release (down to 1.6 on a best-effort basis)


## running the image 
 
**docker run command:** docker run -d -p 8080:8080 -p 50000:50000 --env JAVA_OPTS:"-Xmx7048m -XX:MaxPermSize=10048m -Djava.awt.headless=true -Dmail.smtp.starttls.enable=true -Dhudson.model.DirectoryBrowserSupport.CSP= -Dorg.apache.commons.jelly.tags.fmt.timeZone=Asia/Jerusalem" -v /home/ubuntu/automation/jenkins_home:/var/jenkins_home jenkins

params descreption :

 **-p 8080** :the jenkins port 
 **-env JAVA_OPTS**: all the java option that can be set as env variables 
### setting jvm memory size
"-Xmx7048m -XX:**MaxPermSize=10048m
### for sending mails via smtp server 
 -Djava.awt.headless=true -Dmail.smtp.starttls.enable=true:  
### setting the local date time 
-Dhudson.model.DirectoryBrowserSupport.CSP= -Dorg.apache.commons.jelly.tags.fmt.timeZone=Asia/Jerusalem": 
### setting the jenkins volume
 **-v /home/ubuntu/automation/jenkins_home:/var/jenkins_home:**    (all the xml files in jenkins home are updated to github repo :https://github.com/augurysys/jenknis-server-home-dir)


## Configuring logging
Jenkins logging can be configured through a properties file and java.util.logging.config.file Java property. For example:

mkdir data
cat > data/log.properties <<EOF
handlers=java.util.logging.ConsoleHandler
jenkins.level=FINEST
java.util.logging.ConsoleHandler.level=FINEST
EOF
docker run --name myjenkins -p 8080:8080 -p 50000:50000 --env JAVA_OPTS="-Djava.util.


## updating plugins

## License

A short snippet describing the license (MIT, Apache, etc.)












 

 

