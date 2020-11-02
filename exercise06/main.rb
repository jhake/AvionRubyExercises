class Counter
    attr_reader :count

    def initialize
        @count = 0
    end

    def count_up
        @count += 1
    end
end

counter = Counter.new
counter.count_up
counter.count_up

puts counter.count

class Loan
    def initialize(amount, interest)
        @amount = amount
        @interest = interest
        @years = 0
    end

    def add_year
        @years += 1
    end

    def amount_to_pay
        @amount * interst_after_n_years
    end

    def interst_after_n_years
        (1 + @interest) ** @years
    end
end

loan = Loan.new(100, 0.1)
loan.add_year
loan.add_year
puts loan.amount_to_pay
