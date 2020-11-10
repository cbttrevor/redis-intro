## Learning Objectives

One of the tools included in the Redis software package is a command line interface (CLI) tool to manage Redis.
You can connect to a local or remote Redis instance using the Redis CLI.
If you are connecting to a remote instance of Redis you can specify the host and port to connect to.

If you're running Redis in a Docker container, you can spawn `redis-cli` alongside the server process.

```
export container=rediscontainer
docker exec --interactive --tty $container redis-cli
```

You can use `redis-cli` to change the running configuration of the `redis-server` process, or inspect data inside it.