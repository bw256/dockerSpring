FROM openjdk:8
WORKDIR '/app'

COPY . .

RUN mvn clean install

COPY target/docker-springboot.jar docker-springboot.jar

ENTRYPOINT ["java", "-jar", "docker-springboot.jar"]