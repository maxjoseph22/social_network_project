from lib.users import *

class UserRepository():

    def __init__(self, connection):
        self._connection = connection

    def all(self):
        rows = self._connection.execute("SELECT * FROM users")
        users = []
        for row in rows:
            item = User(row['id'], row['email_address'], row['username'])
            users.append(item)
        return users
