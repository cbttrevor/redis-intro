## Learning Objectives

Redis supports a variety of [data structures](https://redis.io/topics/data-types-intro) that can be used depending on what type of data you're storing.

* Strings
* Lists (set of linear values)
* Sets
* Sorted Sets
* Hashes
* Bit arrays
* Streams

### Strings

```
SET FirstName Trevor
```

You can also store more complex data, such as JSON-formatted data, in strings.

```
SET Person '{"FirstName": "Trevor", "LastName": "Sullivan"}'
GET Person
```

### Linked Lists

Add an item to a new list.

```
RPUSH Food Bacon
```

Add an item in front of Bacon.

```
LPUSH Food Beef
```

Retrieve items from a list. Notice how you can specify an index larger than the list size.

```
LRANGE 0 5
```

### Hashes

Redis hashes are similar to dictionaries and hashtables in other languages.

```
HSET TrevorSullivan Likes 'Bacon, Beef, Beer'
```