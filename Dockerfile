# Use the official OpenJDK 17 image as a base image
FROM openjdk:17-jdk-alpine

# Copy the jar file from the target directory to the container
COPY target/HelloWorld-0.0.1-SNAPSHOT.jar /app/HelloWorld-0.0.1-SNAPSHOT.jar

# Expose the port the application runs on
EXPOSE 8000

# Define the entry point for the container
ENTRYPOINT ["java", "-jar", "/app/HelloWorld-0.0.1-SNAPSHOT.jar"]
