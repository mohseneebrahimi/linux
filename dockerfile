# ---- Stage 1: Build ----
FROM maven:3.9.6-eclipse-temurin-17 AS build

WORKDIR /app

# pom.xml zuerst kopieren (für Docker Cache)
COPY demo4/pom.xml .
RUN mvn dependency:go-offline

# Rest des Projekts kopieren
COPY demo4/src ./src

# Projekt bauen
RUN mvn clean package -DskipTests



  
# ---- Stage 2: Run ----
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# JAR aus Build-Stage kopieren
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8081

ENTRYPOINT ["java","-jar","app.jar"]
