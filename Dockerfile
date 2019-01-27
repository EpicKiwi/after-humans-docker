FROM java
ARG MODPACK_URL
ARG FORGE_URL

WORKDIR /home

RUN echo "Downloading Forge installer" && \
    curl "$FORGE_URL" > /tmp/forge-installer.jar

RUN echo "Installing Forge server" && \
    java -jar /tmp/forge-installer.jar --installServer && \
    ls | grep forge- | head -n 1 | xargs -I {} mv {} forge.jar && \
    echo "Forge server renamed to forge.jar"

RUN echo "Downloading Modpack" && \
    curl "$MODPACK_URL" > /tmp/modpack.zip

RUN echo "Extracting Modpack" && \
    unzip -d . -o /tmp/modpack.zip

COPY server-structure/* /home/

EXPOSE 25565

ENTRYPOINT ["java","-jar","forge.jar"]