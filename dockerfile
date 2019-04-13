FROM tomcat:8
ADD wars/ /usr/local/tomcat/webapps/
ADD config/ /usr/local/tomcat/conf
ADD context/ /usr/local/tomcat/webapps/manager/META-INF/
ADD context/ /usr/local/tomcat/webapps/host-manager/META-INF/
CMD ["catalina.sh", "run"]

