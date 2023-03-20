FROM openjdk:8

WORKDIR /usr/src/app

EXPOSE 8080

# Dockerfile assumed to be in the root of the Spring folder
COPY . .

RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
