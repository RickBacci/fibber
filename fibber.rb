# Fibbonacci Sequence
# The Fibbonacci sequence is a simple numeric sequence that comes up frequently in Computer Science and design tasks.Let 's write a generator that can tell us an arbitrary quantity of numbers in the sequence.
#
# Theory
#
# The sequence begins with the numbers 0 and 1. From there, each element is the sum of the previous two elements.
#
# Start with 0 and 1
# 0 plus 1 is (1)
# 1 plus 1 is (2)
# 1 plus 2 is (3)
# 2 plus 3 is (5)
# 3 plus 5 is (8)
# 5 plus 8 is (13)
# 8 plus 13 is (21)
# So the sequence starts 0, 1, 1, 2, 3, 5, 8, 13, 21.

# Template

# What makes up a Fibbonacci Sequence?

# n0 + n1 = n2
# (n - 2) + (n - 1) = n

quantity = 40

class Fibber

  def initialize
    @sequence = [0, 1]
  end

  def calculate(numbers)
    return @sequence = [0] if numbers == 1
    return @sequence = [0, 1] if numbers == 2

    @sequence << (@sequence[-2] + @sequence[-1])

    if @sequence.size == numbers

      buffer = @sequence.last.to_s.length

      @sequence.each_slice(5) do |vals|
        puts vals.map { |val| val.to_s.rjust(buffer) }.join(', ')
      end
    else
      calculate(numbers)
    end
  end
end


# f(2) + f(3) = f(4)

fib = Fibber.new

fib.calculate(quantity)
