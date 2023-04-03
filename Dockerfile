FROM openjdk:11-jdk-slim
MAINTAINER moinul
COPY target/kid-wise-0.0.1-SNAPSHOT.jar kid-wise.jar

ENTRYPOINT ["java","-jar","/kid-wise.jar"]
