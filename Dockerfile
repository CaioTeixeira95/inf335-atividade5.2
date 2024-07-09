FROM maven:3.9.8 AS builder
WORKDIR /app/atividade5
COPY pom.xml .
COPY src ./src
RUN mvn clean install

FROM openjdk:11
WORKDIR /app/atividade5
COPY --from=builder /app/atividade5/target/aula5.2-1.0-SNAPSHOT.jar /app/atividade5
CMD ["java", "-cp", "aula5.2-1.0-SNAPSHOT.jar", "br.unicamp.inf335.OlaUnicamp"]
