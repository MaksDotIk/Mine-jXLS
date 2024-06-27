FROM eclipse-temurin
EXPOSE 25565
RUN mkdir /server
WORKDIR /server
RUN wget https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar
RUN mkdir /data
WORKDIR /data
RUN echo eula=true > eula.txt
CMD java -Xmx4G -Xms4G -jar /server/server.jar nogui
