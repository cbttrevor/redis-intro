docker build --tag cbtredis $PSScriptRoot

docker run --rm -it --publish 6380:6379 cbtredis