FROM openjdk:17.0.2-jdk-slim
LABEL authors="yhliu"

EXPOSE 8080

ENV JVM_XMS=1g
ENV JVM_XMX=1g
ENV JAVA_OPTS=""

COPY target/spring-boot-admin-0.0.1-SNAPSHOT.jar /spring-boot-admin-0.0.1-SNAPSHOT.jar

ENTRYPOINT exec java -Xms${JVM_XMS} -Xmx${JVM_XMX} ${JAVA_OPTS} -jar spring-boot-admin-0.0.1-SNAPSHOT.jar "$@"
