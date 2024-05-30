FROM ballerina/ballerina:2201.5.1

USER root

ADD . /encryption_service

WORKDIR /encryption_service

RUN bal build

FROM eclipse-temurin:11.0.23_9-jre-focal

RUN apt-get update && apt-get install -y gnupg2

RUN wget -qO - https://pkgs-ce.cossacklabs.com/gpg | apt-key add - && apt install -y apt-transport-https && echo "deb https://pkgs-ce.cossacklabs.com/stable/ubuntu focal main" >> /etc/apt/sources.list.d/cossacklabs.list && apt update && apt install -y libthemis libthemis-jni && cp /usr/lib/aarch64-linux-gnu/jni/libthemis_jni.so /usr/lib

COPY --from=0 /encryption_service/target/bin/encryption_service.jar /encryption_service.jar

CMD ["java", "-jar", "/encryption_service.jar"]
