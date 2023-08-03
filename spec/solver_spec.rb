# frozen_string_literal: true

require_relative '../solver'

describe Solver do
  describe 'can create objects from Solver?' do
    it 'let us instantiate a Solver type object' do
      s = Solver.new
      expect(s).to be_an_instance_of Solver
    end
  end

  describe 'it has the following methods' do
    it '#factorial method exists' do
      s = Solver.new
      expect(s.methods.include?(:factorial)).to be_truthy
    end

    it '#reverse method exists' do
      s = Solver.new
      expect(s.methods.include?(:reverse)).to be_truthy
    end

    it '#fizzbuzz method exists' do
      s = Solver.new
      expect(s.methods.include?(:fizzbuzz)).to be_truthy
    end
  end
end

describe '#factorial method accepted arguments' do
  it 'receives an Integer argument' do
    s = instance_double('Solver')
    expect(s).to receive(:factorial).with(kind_of(Integer))
    s.factorial(0)
  end

  it 'receives only one argument' do
    s = instance_double('Solver')
    expect(s).to receive(:factorial).with(kind_of(Integer)).exactly(1)
    s.factorial(10)
  end
end

describe '#factorial method returned values' do
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

describe '#reverse method accepted arguments' do
  it 'receives a String argument' do
    s = instance_double('Solver')
    expect(s).to receive(:reverse).with(kind_of(String))
    s.reverse('some string')
  end

  it 'receives only one argument' do
    s = instance_double('Solver')
    expect(s).to receive(:reverse).with(kind_of(String)).exactly(1)
    s.reverse('some string')
  end
end

describe '#reverse method returned values' do
  it 'returns the reversed received string' do
    s = Solver.new

    word = 'hello'
    expected_result = 'olleh'
    expect(s.reverse(word)).to eq(expected_result)
  end
end

describe '#fizzbuzz method accepted arguments' do
  it 'receives one argument' do
    s = instance_double('Solver')
    expect(s).to receive(:fizzbuzz).with(kind_of(String)).exactly(1)
    s.fizzbuzz('some string')
  end

  it 'the received argument is an Integer' do
    s = instance_double('Solver')
    expect(s).to receive(:fizzbuzz).with(kind_of(Integer)).exactly(1)
    s.fizzbuzz(0)
  end
end

describe '#fizzbuzz method returned values' do
  it 'returns a string' do
    s = Solver.new
    expect(s.fizzbuzz(2)).to be_an_instance_of(String)
  end

  it 'returns \'fizz\' when it receives a number divisible by 3' do
    s = Solver.new
    n1 = 3
    n2 = 6
    n3 = 9
    expected_result = 'fizz'
    expect(s.fizzbuzz(n1)).to eql(expected_result)
    expect(s.fizzbuzz(n2)).to eql(expected_result)
    expect(s.fizzbuzz(n3)).to eql(expected_result)
  end

  it 'returns \'buzz\' when it receives a number divisible by 5' do
    s = Solver.new
    n1 = 5
    n2 = 10
    n3 = 20
    expected_result = 'buzz'
    expect(s.fizzbuzz(n1)).to eql(expected_result)
    expect(s.fizzbuzz(n2)).to eql(expected_result)
    expect(s.fizzbuzz(n3)).to eql(expected_result)
  end

  it 'returns \'fizzbuzz\' when it receives a number divisible by 5 and 3' do
    s = Solver.new
    n1 = 15
    n2 = 30
    n3 = 45
    expected_result = 'fizzbuzz'
    expect(s.fizzbuzz(n1)).to eql(expected_result)
    expect(s.fizzbuzz(n2)).to eql(expected_result)
    expect(s.fizzbuzz(n3)).to eql(expected_result)
  end
end
