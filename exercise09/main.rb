# SINGLE RESPONSIBILITY
class Counter
    attr_reader :count

    def initialize
        @count = 0
    end

    def count_up
        @count += 1
    end
end

# OPEN/CLOSED PRINCIPLE
class FasterCounter < Counter
    def count_up
        @count += 2
    end
end

# LISKOV SUBSTITUTION PRINCIPLE
counter = Counter.new
fast_counter = FasterCounter.new

# can count up both the counter and its children fast_counter
counter.count_up
fast_counter.count_up

# INTERFACE SEGREGATION PRINCIPLE

# before
class Counter
    attr_reader :count

    def initialize
        @count = 0
    end

    def count_up(log)
        @count += 1
        if log
            puts @count
        end
    end
end

# after
class Counter
    attr_reader :count

    def initialize
        @count = 0
    end

    def count_up
        @count += 1
    end

    def count_up_with_log
        self.count_up
        puts @count
    end
end

# DEPENDENCY INVERSION PRINCIPLE
class PaymentManager
    def initialize(payment_processor)
        @payment_processor = payment_processor
    end

    def pay(amount)
        @payment_processor.pay(amount)
    end
end

class Processor1
    def pay(amount)
        # do something
    end
end

class Processor2
    def pay(amount)
        # do something
    end
end
