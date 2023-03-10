ARG ARCH="amd64"
FROM ${ARCH}/knoldus:17-java17.15
RUN apk add bash curl jq
COPY build/libs/spring-demo-1.0.0-SNAPSHOT.jar /spring-demo-1.0.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-Xms32m", "-Xms128M", "-jar","/spring-demo-1.0.0-SNAPSHOT.jar"]
