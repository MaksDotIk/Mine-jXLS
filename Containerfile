FROM eclipse-temurin:latest
EXPOSE 25565
RUN mkdir /data
RUN wget https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar -o /data/server.jar
RUN echo eula=true > /data/eula.txt
WORKDIR /data
ENTRYPOINT ["java", "-Xmx4096M", "-Xms4096M", "-jar", "server.jar", "nogui"]
