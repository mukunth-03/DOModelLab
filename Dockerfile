# Use Maven image with JDK
FROM maven:3.8.5-openjdk-11 AS build

# Set work directory in the container
WORKDIR /app

# Copy the project files to the container
COPY . .

# Run Maven build lifecycle (clean, compile, package)
RUN mvn clean package

