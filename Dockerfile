# Use an official Java image as the base image
FROM openjdk:14-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . .

# Build the application using Maven
RUN mvn clean install

# Set the environment variable for the port number the application will run on
ENV PORT 8080

# Expose the port number to the host
EXPOSE 8080

# Specify the command to run the application
CMD ["java", "-jar", "target/web-calculator-1.0-SNAPSHOT.jar"]