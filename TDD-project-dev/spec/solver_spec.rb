require 'rspec'
require_relative '../solver'

RSpec.describe Solver do
  describe '#factorial' do
    it 'returns 1 when given 0' do
      solver = Solver.new
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the correct factorial for a positive integer' do
      solver = Solver.new
      expect(solver.factorial(5)).to eq(120)
    end

    it 'raises an exception for a negative integer' do
      solver = Solver.new
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns the reversed word' do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when given a multiple of 3' do
      solver = Solver.new
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" when given a multiple of 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when given a multiple of both 3 and 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for other cases' do
      solver = Solver.new
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
