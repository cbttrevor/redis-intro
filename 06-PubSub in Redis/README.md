## Learning Objectives

One of the common use cases for Redis is to serve as a [publish-subscribe message broker](https://redis.io/topics/pubsub).
One or more clients can connect to Redis and "subscribe" to a "channel."
Other clients can connect to the same Redis service and "publish" messages to the same channel name.
All of the clients will simultaneously receive the same message that was sent by the publisher.

In addition to basic pub-sub capabilities, Redis also supports globbing for matching incoming messages by subscribed clients.
