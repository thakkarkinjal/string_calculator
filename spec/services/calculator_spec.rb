require 'rails_helper'

RSpec.describe Calculator do
	describe 'add' do
		it 'should return 0 for an empty string' do
      expect(Calculator.new.add("")).to eq(0)
    end
	end
end