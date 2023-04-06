FROM tomcat:latest
WORKDIR /var/lib/jenkins/workspace/maven_pipe/my-app/  
COPY target/my-app-1.0-SNAPSHOT.jar /user/tomcat/webapp/
 
# Port and set entry point for container 
EXPOSE 8080
#ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
