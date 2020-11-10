# Run a new Redis container
export cont_id=docker run --rm --detach --interactive --tty redis

# Open Redis CLI and subscribe to a topic
docker exec -it $cont_id redis-cli
redis-cli> SUBSCRIBE names

# Spin up another terminal session and send a message to a topic
docker exec -it $cont_id redis-cli
redis-cli> PUBLISH names Trevor, Joe, John, Billy