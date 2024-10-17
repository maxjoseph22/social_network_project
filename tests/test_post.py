from lib.post import *

def test_post_inits_as_expected():
    post = Post(1, 'hey', 'sup', 1)
    assert post.id == 1
    assert post.title == 'hey'
    assert post.content == 'sup'
    assert post.user_id == 1