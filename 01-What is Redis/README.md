## Learning Objectives

Redis is an open source, in-memory data storage service that delivers data in a high-performance fashion.

You can use Redis to cache data from long-running queries and respond more quickly.
In high-traffic applications, using a cache can reduce the load on database servers and improve end user performance.
Retrieving data from Random Access Memory (RAM) is significantly faster than storing data on persistent disks.
However, Solid State Drives (SSD) are narrowing the gap between persistent storage and RAM.

When you deploy a cache, it is empty by default. 
You can populate the cache upon an initial request to a web server, or by implementing a background worker process.

### Deployment of Redis

Stand-alone Redis server in a Docker container. 
Run Redis as a managed service on a cloud provider, such as Microsoft Azure or Amazon Web Services (AWS).
You can also run Redis as a clustered service with a master and one or more slave nodes.

### Cache Invalidation

What happens if data changes in the original database?
Cached data can become outdated when new data is inserted into, or deleted from, the source database.
Once data becomes outdated, we need to "invalidate" the cache and repopulate it with fresh data.
Cache invalidation can be performed using triggers on the source database.