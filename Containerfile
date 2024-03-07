FROM eclipse-temurin
EXPOSE 25565
RUN mkdir /server
WORKDIR /server
RUN wget https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar
RUN mkdir /data
WORKDIR /data
RUN echo eula=true > eula.txt
CMD java -Xmx${XMX:-4096}M -Xms${XMX:-4096}M -jar /server/server.jar nogui
