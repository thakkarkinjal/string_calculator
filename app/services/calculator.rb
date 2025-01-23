class Calculator

	def add(numbers)
		return 0 if numbers.length == 0
		numbers.gsub(/\n/, ',').split(',').map(&:to_i).sum
	end
end