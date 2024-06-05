# Use an official JDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Spring Boot JAR file into the container at /app
COPY target/question-service-0.0.1-SNAPSHOT.jar /app/app.jar


# Command to run the Spring Boot application when the container starts
CMD ["java", "-jar", "app.jar"]
