# frozen_string_literal: true

require_relative '../solver'

describe Solver do
  describe 'can create objects from Solver?' do
    it 'let us instantiate a Solver type object' do
      s = Solver.new
      expect(s).to be_an_instance_of Solver
    end
  end

  describe '#factorial method' do
    it 'has a \'factorial\' method' do
      s = Solver.new
      expect(s.methods.include?(:factorial)).to be_truthy
    end

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

  describe '#reverse method' do
    it 'has a \'reverse\' method' do
      s = Solver.new
      expect(s.methods.include?(:reverse)).to be_truthy
    end

    it 'returns the reverse of a word' do
      s = Solver.new

      word = 'hello'
      expected_result = 'olleh'
      expect(s.reverse(word)).to eq(expected_result)
    end
  end
end
