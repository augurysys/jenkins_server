## Synopsis

Building projects and 
Running tests to detect bugs and other issues as soon as they are introduced
Static code analysis
Deployment


## Installation
 
 before building and running the docker :
 
1. clone the jenkins server home dir from https://github.com/augurysys/jenknis-server-home-dir on the host

2. open jenkins server port (8080 in this example)

 
##running the image 



 
**docker run command:** docker run -d -p 8080:8080 -p 50000:50000 --env JAVA_OPTS:"-Xmx7048m -XX:MaxPermSize=10048m -Djava.awt.headless=true -Dmail.smtp.starttls.enable=true -Dhudson.model.DirectoryBrowserSupport.CSP= -Dorg.apache.commons.jelly.tags.fmt.timeZone=Asia/Jerusalem" -v /home/ubuntu/automation/jenkins_home:/var/jenkins_home jenkins

params descreption :

 **-p 8080** :the jenkins port \
 **-env JAVA_OPTS**: all the java option that can be set as env variables \
**"-Xmx7048m -XX:**MaxPermSize=10048m  :jvm memory size \
 **-Djava.awt.headless=true -Dmail.smtp.starttls.enable=true:**   for sending mails via smtp server\
**-Dhudson.model.DirectoryBrowserSupport.CSP= -Dorg.apache.commons.jelly.tags.fmt.timeZone=Asia/Jerusalem":**   setting the local date time\
 **-v /home/ubuntu/automation/jenkins_home:/var/jenkins_home:**   setting the jenkins volume (all the xml files in jenkins home are updated to github repo :https://github.com/augurysys/jenknis-server-home-dir)


## License

A short snippet describing the license (MIT, Apache, etc.)












 

 

