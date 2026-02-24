# ---- Stage 1: Build ----
FROM maven:3.9.6-eclipse-temurin-17 AS build

WORKDIR /app

# Projektordner kopieren
COPY demo4/ ./demo4/

# Ins Projektverzeichnis wechseln
WORKDIR /app/demo4

# Projekt bauen (skip Tests optional)
RUN mvn clean package -DskipTests

# ---- Stage 2: Runtime ----
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# JAR aus Build-Stage kopieren
COPY --from=build /app/demo4/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]
