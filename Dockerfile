FROM openjdk:21-jre

RUN wget https://downloads.gtnewhorizons.com/ServerPacks/GT_New_Horizons_2.7.2_Server_Java_17-21.zip

RUN unzip GT_New_Horizons_2.7.2_Server_Java_17-21.zip -d /app

WORKDIR /app

VOLUME /app/config
VOLUME /app/server.properties

EXPOSE 25565/tcp

CMD ['startserver-java9.sh']
