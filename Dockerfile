# Use official OpenJDK image
# FROM openjdk:17-jdk-slim
FROM eclipse-temurin:17-jdk

# Set working directory inside container
WORKDIR /app

# Copy jar from Maven target folder
COPY target/SciCalc-1.0-SNAPSHOT.jar app.jar

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
