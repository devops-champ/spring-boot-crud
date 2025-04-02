FROM maven:3.9-eclipse-temurin-17

WORKDIR /app

COPY pom.xml .

COPY /src ./src

RUN mvn clean package -DskipTests
    
EXPOSE 9060

CMD ["java", "-jar", "target/employee-crud-demo-1.0.0.jar", "--spring.profiles.active=${SPRING_PROFILES_ACTIVE}"]