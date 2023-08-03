require_relative '../solver'

describe Solver do
  s = Solver.new
  describe 'can create objects from Solver?' do
    it 'let us instantiate a Solver type object' do
      expect(s).to be_an_instance_of Solver
    end
  end

  describe 'it has the following methods' do
    it '#factorial method exists' do
      expect(s.methods.include?(:factorial)).to be_truthy
    end

    it '#reverse method exists' do
      expect(s.methods.include?(:reverse)).to be_truthy
    end

    it '#fizzbuzz method exists' do
      expect(s.methods.include?(:fizzbuzz)).to be_truthy
    end
  end
end

describe '#factorial method accepted arguments' do
  it 'receives only one Integer argument' do
    i = instance_double('Solver')
    expect(i).to receive(:factorial).with(kind_of(Integer)).exactly(1)
    i.factorial(0)
  end
end

describe '#factorial method returned values' do
  s = Solver.new
  it 'returns the correct factorial for positive integers' do
    expect(s.factorial(1)).to eq(1)
    expect(s.factorial(5)).to eq(120)
    expect(s.factorial(7)).to eq(5040)
    expect(s.factorial(10)).to eq(3_628_800)
  end

  it 'returns 1 for input 0' do
    expect(s.factorial(0)).to eq(1)
  end

  it 'raises an ArgumentError' do
    expect { s.factorial(-1) }.to raise_error(ArgumentError, 'Input must be a non-negative integer')
    expect { s.factorial(-10) }.to raise_error(ArgumentError, 'Input must be a non-negative integer')
  end
end

describe '#reverse method accepted arguments' do
  it 'receives only one String argument' do
    i = instance_double('Solver')
    expect(i).to receive(:reverse).with(kind_of(String)).exactly(1)
    i.reverse('some string')
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
  it 'receives only one Integer argument' do
    i = instance_double('Solver')
    expect(i).to receive(:fizzbuzz).with(kind_of(Integer)).exactly(1)
    i.fizzbuzz(0)
  end
end

describe '#fizzbuzz method returned value type' do
  s = Solver.new
  it 'returns a String' do
    expect(s.fizzbuzz(2)).to be_an_instance_of(String)
  end
end

describe '#fizzbuzz method returned values' do
  s = Solver.new
  it 'returns \'fizz\' when it receives a number divisible by 3' do
    expected_result = 'fizz'
    expect(s.fizzbuzz(3)).to eql(expected_result)
    expect(s.fizzbuzz(6)).to eql(expected_result)
  end

  it 'returns \'buzz\' when it receives a number divisible by 5' do
    expected_result = 'buzz'
    expect(s.fizzbuzz(5)).to eql(expected_result)
    expect(s.fizzbuzz(10)).to eql(expected_result)
  end

  it 'returns \'fizzbuzz\' when it receives a number divisible by 5 and 3' do
    n1 = 15
    n2 = 30
    expected_result = 'fizzbuzz'
    expect(s.fizzbuzz(n1)).to eql(expected_result)
    expect(s.fizzbuzz(n2)).to eql(expected_result)
  end

  it 'returns the provided number as a string if number is not divisible by 3 or 5' do
    n1 = 11
    n2 = 7
    expect(s.fizzbuzz(n1)).to eql(n1.to_s)
    expect(s.fizzbuzz(n2)).to eql(n2.to_s)
  end
end
