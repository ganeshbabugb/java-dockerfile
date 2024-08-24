# Use the official OpenJDK 17 image as a base image
FROM alpine/java:21-jdk

# Copy the jar file from the target directory to the container
COPY target/ems-0.0.1-SNAPSHOT.jar /app/ems-0.0.1-SNAPSHOT.jar

# Expose the port the application runs on
EXPOSE 8000

# Define the entry point for the container
ENTRYPOINT ["java", "-jar", "/app/ems-0.0.1-SNAPSHOT.jar"]