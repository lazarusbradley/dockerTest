# Use an official OpenJDK runtime as a parent image
FROM openjdk:21

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the JAR file into the container
COPY build/app.jar .

# Run the JAR file
CMD ["java", "-jar", "app.jar"]
