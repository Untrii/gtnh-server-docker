FROM ubuntu:24.10

RUN apt update && apt install -y wget unzip default-jre

RUN wget https://downloads.gtnewhorizons.com/ServerPacks/GT_New_Horizons_2.7.2_Server_Java_17-21.zip

RUN unzip GT_New_Horizons_2.7.2_Server_Java_17-21.zip -d /app

RUN rm GT_New_Horizons_2.7.2_Server_Java_17-21.zip

WORKDIR /app

RUN rm -rf /app/config
RUN rm /app/server.properties

RUN chmod +x /app/startserver-java9.sh

VOLUME /app/config
VOLUME /app/server.properties

EXPOSE 25565/tcp

CMD './startserver-java9.sh'
