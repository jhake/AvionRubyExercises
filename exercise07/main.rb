# A duck
class Duck
    def quack
        puts "quack quack quack"
    end
end

# A special duck
class SpecialDuck < Duck
    def quack
        super
        puts "i'm special"
    end
end

# Not a duck
class FakeDuck
    def quack
        puts "i'm not a duck but i can quack"
    end
end

# Not a duck
class Dog
    def bark
        puts "woof woof woof"
    end
end

def is_duck?(object)
    return object.respond_to?(:quack)
end

duck = Duck.new
puts is_duck?(duck)

specialDuck = SpecialDuck.new
puts is_duck?(specialDuck)

fakeDuck = FakeDuck.new
puts is_duck?(fakeDuck)

dog = Dog.new
puts is_duck?(dog)
