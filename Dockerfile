FROM    maven:3-openjdk-8
RUN      mkdir -p /todo/src
WORKDIR  /todo
COPY    src .
COPY    pom.xml .
RUN     mvn package
CMD     [ "java", "-jar",  "target/users.jar" ]
