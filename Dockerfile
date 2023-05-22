# docker image build . -t demo

FROM maven:3-openjdk-11 AS build

COPY . /sources
RUN cd /sources && mvn clean install

FROM openjdk:11-jre-slim-bullseye AS dist

WORKDIR /program

COPY --from=build /sources/target/demo-0.0.1-SNAPSHOT.jar /program/demo-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "/program/demo-0.0.1-SNAPSHOT.jar"]

