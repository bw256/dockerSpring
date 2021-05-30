FROM openjdk:8
WORKDIR '/app'
RUN apt-get update
RUN apt-get install -y maven

COPY . .

RUN mvn package
EXPOSE 8080
CMD ["java", "-jar", "target/docker-springboot.jar"]