FROM eclipse-temurin
EXPOSE 25565
RUN mkdir /server
WORKDIR /server
RUN wget https://api.papermc.io/v2/projects/paper/versions/1.21.3/builds/68/downloads/paper-1.21.3-68.jar
RUN mkdir /data
WORKDIR /data
RUN echo eula=true > eula.txt
CMD java -Xmx${XMX:-4G} -Xms${XMX:-4G} -jar /server/server.jar nogui
