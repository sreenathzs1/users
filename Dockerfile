FROM    maven:3-openjdk-8 as BUILD
RUN      mkdir -p /todo/src
WORKDIR  /todo
COPY    src src
COPY    pom.xml .
RUN     mvn package

FROM    openjdk:8-jre-slim
COPY    --from=BUILD /todo/target/users.jar
CMD     [ "java", "-jar", "users.jar" ]
