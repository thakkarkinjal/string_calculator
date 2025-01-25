class Calculator

	def add(numbers)
		return 0 if numbers.length == 0
		delimeter = ","

		# handles any custom delimeter
		if numbers.start_with?("//")
			delimeter = numbers.match(/\/\/(.)\n/)[1]
		end
		numbers = numbers.gsub(/\/\/(.)\n/, "")
		numbers = numbers.gsub("\n", delimeter).split(delimeter).map(&:to_i)

		# throws an exception for negative numbers
		negatives = numbers.select(&:negative?)
		raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.present?
		numbers.reject{ |num| num > 1000 }.sum
	end
end