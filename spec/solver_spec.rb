# frozen_string_literal: true

require_relative '../solver'

describe Solver do
  it 'let us instantiate a Solver type object' do
    s = Solver.new
    expect(s).to be_an_instance_of Solver
  end

  it 'has a \'factorial\' method' do
    s = Solver.new
    expect(s.methods.include?(:factorial)).to be_truthy
  end

  describe '#factorial' do
    it 'returns the correct factorial for positive integers' do
      s = Solver.new
      expect(s.factorial(1)).to eq(1)
      expect(s.factorial(5)).to eq(120)
      expect(s.factorial(7)).to eq(5040)
      expect(s.factorial(10)).to eq(3_628_800)
    end
    it 'returns 1 for input 0' do
      s = Solver.new
      expect(s.factorial(0)).to eq(1)
    end
    it 'raises an ArgumentError' do
      s = Solver.new
      expect { s.factorial(-1) }.to raise_error(ArgumentError, 'Input must be a non-negative integer')
      expect { s.factorial(-10) }.to raise_error(ArgumentError, 'Input must be a non-negative integer')
    end
  end
end
