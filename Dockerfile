FROM tomcat:8
COPY /target/calc.war /usr/local/tomcat/webapps/
EXPOSE 8080
ENTRYPOINT ["java","-jar","calc.war"]
