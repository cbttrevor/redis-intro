FROM redis

ADD ["cbtredis.conf", "/data/"]

ENTRYPOINT ["redis-server", "/data/cbtredis.conf"]