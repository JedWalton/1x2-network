# Start with a base image containing Java runtime (JDK 17)
FROM openjdk:17-slim as build

# Add Maintainer Info
LABEL maintainer="jedwaltondev@gmail.com"

# Set the current working directory inside the image
WORKDIR /app

# Copy maven executable to the image
COPY mvnw .
COPY .mvn .mvn

# Copy the pom.xml file
COPY pom.xml .

# Copy the project source
COPY src src

# Package the application
RUN ./mvnw package -DskipTests

# Run the Spring Boot application on container startup
FROM openjdk:17-slim
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

