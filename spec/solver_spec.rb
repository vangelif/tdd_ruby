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

  it 'returns the correct factorial for positive integers' do 
    expect(factorial(1)).to eq(1)
    expect(factorial(5)).to eq(120)
  end
end
