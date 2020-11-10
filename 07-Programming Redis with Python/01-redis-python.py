from redis import Redis

r = Redis(host='localhost', port=6379, password='trevor123')

r.set(name='FirstName', value='Trevor Sullivan')
print(r.get('FirstName').decode('utf-8'))

# Set a hash field-value pair
r.hset('Trevor', 'Likes', 'Bacon')
print(r.hget('Trevor', 'Likes').decode('utf-8'))

