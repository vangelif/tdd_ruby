# Solver is a class with three methods
#  > factorial - which returns the factorial for a positive number
#  > reverse - which returns a reversed version of the provided string
#  > fizzbuzz - which returns a string according to a number provided
class Solver

  # FACTORIAL is a function that
  # multiplies all whole numbers that preceded our given number down to 1  
  def factorial(number)
    if number.negative?
      raise ArgumentError, 'Input must be a non-negative integer'
    elsif number.zero?
      1
    else
      number * factorial(number - 1)
    end
  end

  def reverse(word)
    word.reverse
  end

  # FIZZBUZZ function is  checking whether our number is 
  # exactly divisible by 5 or 3
  def fizzbuzz(num)
    return 'fizzbuzz' if (num % 5).zero? && (num % 3).zero?

    return 'fizz' if (num % 3).zero?

    return 'buzz' if (num % 5).zero?

    num.to_s
  end
end
