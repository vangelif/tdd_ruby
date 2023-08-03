# frozen_string_literal: true

# Solver is a class with three methods
#  > factorial - which returns the factorial for a positive number
#  > reverse - which returns a reversed version of the provided string
#  > fizzbuzz - which returns a string according to a number provided
class Solver
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

  def fizzbuzz(n)
  end
end
