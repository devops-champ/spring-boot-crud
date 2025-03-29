FROM maven:3.9-eclipse-temurin-17-alpine

WORKDIR /app

COPY pom.xml .

COPY /src ./src

RUN mvn clean package -DskipTests
    
EXPOSE 9050

CMD ["java", "-jar", "target/*.jar"]