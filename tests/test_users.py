from lib.users import *

def test_user_inits_as_expected():
    user = User(1, 'max@gmail.com', 'minimaxj')
    assert user.email_address == 'max@gmail.com'
    assert user.username == 'minimaxj'
    assert user.id == 1