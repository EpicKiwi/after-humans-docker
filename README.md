# After humns Docker

> Docker image for [After humans Minecraft modpack](https://www.technicpack.net/modpack/minecraft-after-humans.1060474) server

Running this image suppose that you accepted [Minecraft's EULA](https://account.mojang.com/documents/minecraft_eula).

## Usage

```sh-session
$ ./build.sh
$ docker run -p 25565:25565 --name after-humans-server after-humans
```

## Server tweaks

### Properties

Server root inside container is under `/home`.
Default properties can be sse in [`server-structure/server.properties`](./server-structure/server.properties).

To specify a new properties file, mount it with the following parameter on docker run command.

```
-v /home/server.properties:/path/to/your/server.properties
```

### Save your world

By default, world is saved inside container and will be lost if container is removed.
Save your world to a volume or a folder on your system by mounting a world folder in container.

```
-v /home/world:/path/to/your/world/dir
```
