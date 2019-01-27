# Version of modpack built
MODPACK_VERSION="1.3"
# After humans version 1.3
MODPACK_URL="http://modpacks.nitrado.net/Minecraft_After_Humans_1.3.zip"
# Forge installer version 10.13.4.1614
FORGE_URL="https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.7.10-10.13.4.1614-1.7.10/forge-1.7.10-10.13.4.1614-1.7.10-installer.jar"

docker build \
    --build-arg MODPACK_URL="$MODPACK_URL" \
    --build-arg FORGE_URL="$FORGE_URL" \
    -t after-humans:latest \
    -t after-humans:$MODPACK_VERSION \
    .