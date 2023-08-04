# frozen_string_literal: true

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
end
