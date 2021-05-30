FROM openjdk:8
WORKDIR '/app'
RUN apt-get update
RUN apt-get install -y maven

COPY . .

RUN mvn package

CMD ["java", "-jar", "target/docker-springboot.jar"]