FROM arm64v8/openjdk:21-bullseye AS base

RUN apt update && \
    apt -y upgrade && \
    apt -y install python3 python3-pip && \
    pip3 install --force-reinstall "Pillow==10.4.0"

#ENV _JAVA_OPTIONS="-Xmx4g"

FROM arm64v8/maven:3.9.9-eclipse-temurin-21 AS build

WORKDIR /app

COPY ./src ./src
COPY ./pom.xml .

#RUN mvn package -X
RUN MAVEN_OPTS="-XX:UseSVE=0" mvn package -X


FROM base AS runtime

WORKDIR /app
COPY --from=build /app/target/BoarBotJE.jar .
COPY ./resourcepac[k] ./resourcepack
COPY ./database/scripts ./database/scripts
RUN mkdir logs

ENTRYPOINT ["java", "-XX:UseSVE=0", "-jar", "BoarBotJE.jar", "prod"]