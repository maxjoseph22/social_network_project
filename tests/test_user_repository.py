from lib.user_repository import *
from lib.users import *

def test_all_function(db_connection):
    db_connection.seed("seeds/social_network.sql")
    repository = UserRepository(db_connection)
    users = repository.all()
    assert users == [
        User(1, 'max@gmail.com', 'max9889'),
        User(2, 'john@hotmail.com', 'hedgegog22'),
        User(3, 'frank11@yahoo.com', 'poolboy78'),
        User(4, 'sally2@gmail.com', 'sally90009'),
        User(5, 'rachel.jones@hotmail.co.uk', 'boshboshbosh')
]
    


