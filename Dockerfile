FROM tomcat:latest
  
COPY /var/lib/jenkins/workspace/maven_pipe/my-app/target/my-app-1.0-SNAPSHOT.jar /user/tomcat/webapp/
 
# Port and set entry point for container 
EXPOSE 8080
#ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
