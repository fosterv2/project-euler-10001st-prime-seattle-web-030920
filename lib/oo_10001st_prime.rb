# Implement your object-oriented solution here!
class Prime
    def initialize(num)
        @nth = num
    end

    def is_prime?(num)
        (2..Math.sqrt(num).to_i).filter { |n| num % n == 0 }.length == 0
    end

    def number
        count = 2
        prime = 1
        while prime < @nth
            count += 1
            if is_prime?(count)
                prime += 1
            end
        end
        count
    end
end
