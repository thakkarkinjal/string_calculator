class Calculator

	def add(numbers)
		return 0 if numbers.length == 0
		delimeter = ","
		if numbers.start_with?("//")
			delimeter = numbers.match(/\/\/(.)\n/)[1]
		end
		numbers = numbers.gsub(/\/\/(.)\n/, "")
		numbers.gsub("\n", delimeter).split(delimeter).map(&:to_i).sum
	end
end