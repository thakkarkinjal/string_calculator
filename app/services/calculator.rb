class Calculator

	def add(numbers)
		return 0 if numbers.length == 0
		if numbers.start_with?("//")
			if numbers.include?(";")
				numbers = numbers.gsub(";", ",")
			end
		end
		numbers.gsub(/\n/, ',').split(',').map(&:to_i).sum
	end
end