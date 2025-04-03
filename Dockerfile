# Use the official Tomcat 9 image with JDK 11
FROM tomcat:9.0-jdk11-temurin

# Remove the default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the pre-built WAR file from your project's target directory
# into the Tomcat webapps directory.
# It will be automatically deployed by Tomcat when it starts.
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
