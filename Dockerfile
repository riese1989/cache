FROM maven:3.8-openjdk-17 AS builder
WORKDIR /usr/src/app
COPY pom.xml .
COPY src ./src
RUN mvn package -DskipTests

FROM openjdk:17-oracle
WORKDIR /app
COPY --from=builder /usr/src/app/target/*.jar cache-app.jar
CMD ["java","-jar","cache-app.jar"]