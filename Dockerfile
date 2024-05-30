FROM ballerina/ballerina:2201.5.1

ADD . /encryption_service

WORKDIR /encryption_service

USER root

RUN bal build

FROM eclipse-temurin:11.0.23_9-jre-focal

ARG USER=app-user
ARG USER_ID=10001
ARG USER_GROUP=wso2
ARG USER_GROUP_ID=10001
ARG USER_HOME=/home/${USER}

RUN apt-get update && apt-get install -y gnupg2

RUN wget -qO - https://pkgs-ce.cossacklabs.com/gpg | apt-key add - && apt install -y apt-transport-https && echo "deb https://pkgs-ce.cossacklabs.com/stable/ubuntu focal main" >> /etc/apt/sources.list.d/cossacklabs.list && apt update && apt install -y libthemis libthemis-jni && find /usr/lib/ -name 'libthemis_jni.so' -exec cp "{}" /usr/lib  /usr/lib;

RUN addgroup -S -g ${USER_GROUP_ID} ${USER_GROUP} \
    && adduser -S -D -H -h ${USER_HOME} -s /sbin/nologin -G ${USER_GROUP} -u ${USER_ID} ${USER}

COPY --chown=${USER}:${USER_GROUP} --from=0 /encryption_service/target/bin/envryption_service.jar ${USER_HOME}/

USER 10001
WORKDIR ${USER_HOME}

CMD ["java", "-jar", "/envryption_service.jar"]
