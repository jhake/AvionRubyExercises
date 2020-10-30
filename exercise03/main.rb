class User
    """
        This User class has properties @name and @password
    """
    def initialize(name, password)
        @name = name
        @password = password
    end

    def check_password(password)
    """
        This method checks if the entered password matches the user's password
    """
        return password == @password
    end
end

# create new user
some_user = User.new("rommel", "123")

# enter a wrong password
puts some_user.check_password("111")

# enter the correct password
puts some_user.check_password("123")
