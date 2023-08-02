# frozen_string_literal: true

require_relative '../solver'

describe Solver do
  it 'let us instantiate a Solver type object' do
    s = Solver.new
    expect(s).to be_an_instance_of Solver
  end
end
