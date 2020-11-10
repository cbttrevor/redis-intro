## Learning Objectives

Although Redis serves as an in-memory datastore for fast performance, you can also [persist and restore data in Redis](https://redis.io/topics/persistence).

You can take snapshots of your Redis Database (RDB) as periodic backups.

You can use the `SAVE` command to cause Redis to write the current database to the local filesystem as `dump.rdb`.
The `.rdb` file extension is short-hand for Redis Database.
Redis forks the process that handles the disk write, and then terminates the parent process.

### Append-only Writes

Writing snapshots to disk is a non-durable operation, meaning that filesystem or power interruptions can cause the write to fail.
For higher durability of data persistence, you can enable append-only writes.
Once append-only is enabled, any Redis command that changes the in-memory data will be appended to the append-only data file on the filesystem.

```
CONFIG SET APPENDONLY yes
```

You can change the name of the append-only file (AOF) using the `appendfilename` configuration option.
You cannot set the `appendfilename` setting at runtime, rather you must specify it in a configuration file.

```
> CONFIG GET appendfilename

> CONFIG SET appendfilename cbt.aof
(error) ERR Unsupported CONFIG parameter: appendfilename
```

### Error Conditions Setting Configuration Options

If you try to specify an invalid value for a configuration option, you will be duly informed.
For example, both of the following commands will fail with an error message.

```
> CONFIG SET APPENDONLY yup
(error) ERR Invalid argument 'yup' for CONFIG SET 'APPENDONLY' - argument must be 'yes' or 'no'

> CONFIG SET APPENDONLY222 yes
(error) ERR Unsupported CONFIG parameter: APPENDONLY222
```