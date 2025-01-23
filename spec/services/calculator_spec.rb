require 'rails_helper'

RSpec.describe Calculator do
	describe 'add' do
		it 'should return 0 for an empty string' do
      expect(Calculator.new.add("")).to eq(0)
    end

    it 'should return single number itself for a single number' do
    	expect(Calculator.new.add("4")).to eq(4)
    end
	end
end