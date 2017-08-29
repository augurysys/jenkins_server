# jenkins_server

#below the docker run command with all relevant vars

# docker run -d -p 8080:8080 -p 50000:50000 --env JAVA_OPTS:"-Xmx7048m -XX:MaxPermSize=10048m -Djava.awt.headless=true -Dmail.smtp.starttls.enable=true -Dhudson.model.DirectoryBrowserSupport.CSP= -Dorg.apache.commons.jelly.tags.fmt.timeZone=Asia/Jerusalem" -v /home/ubuntu/automation/jenkins_home:/var/jenkins_home jenkins


# -p 8080 :the jenkins port
# -env JAVA_OPTS: all the java option that can be set as env variables
#"-Xmx7048m -XX:MaxPermSize=10048m  :jvm memory size
# -Djava.awt.headless=true -Dmail.smtp.starttls.enable=true:   for sending mails via smtp server
#-Dhudson.model.DirectoryBrowserSupport.CSP= -Dorg.apache.commons.jelly.tags.fmt.timeZone=Asia/Jerusalem":   setting the local date time
# -v /home/ubuntu/automation/jenkins_home:/var/jenkins_home:   setting the jenkins volume (all the xml files in jenkins home are updated to github repo :https://github.com/augurysys/jenknis-server-home-dir)


