
class User():

    def __init__(self, id, email_address, username):
        self.email_address = email_address
        self.username = username
        self.id = id

    def __eq__(self, other):
        return self.__dict__ == other.__dict__
    
    def __repr__(self):
        return f"User({self.id}, {self.email_address}, {self.username})"