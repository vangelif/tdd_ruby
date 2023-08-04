# frozen_string_literal: true

class Solver
  def factorial(number)
    if number.zero?
      1
    else
      number * factorial(number - 1)
    end
  end
end
