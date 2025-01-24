require 'rails_helper'

RSpec.describe Calculator do
	describe 'add' do
		it 'should return 0 for an empty string' do
      expect(Calculator.new.add("")).to eq(0)
    end

    it 'should return single number itself for a single number' do
    	expect(Calculator.new.add("4")).to eq(4)
    end

    it 'should return sum of multiple numbers' do
    	expect(Calculator.new.add("1,2,4,6")).to eq(13)
    end

    it 'handles new lines between numbers' do
    	expect(Calculator.new.add("1\n,2,5")).to eq(8)
    end

    it 'handles different delimiters' do
      expect(Calculator.new.add("//;\n1;2")).to eq(3)
    end

    it 'should handle custom delimeters' do
      expect(Calculator.new.add("//|\n8|7|10")).to eq(25)
    end

    it 'raises an exception for negative numbers' do
      expect{ Calculator.new.add("4,5,-2,-1") }.to raise_error("Negatives not allowed: -2, -1")
    end
  end
end