class Calculator

	def add(numbers)
		return 0 if numbers.length == 0
		delimeter = ","

		# handles any custom delimeter
		if numbers.start_with?("//")
			delimeter = find_delimeters(numbers)
			numbers = numbers.split("\n")[1]
		end
		numbers = numbers.split(/#{delimeter}/).map(&:to_i)

		# throws an exception for negative numbers
		negatives = numbers.select(&:negative?)
		raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.present?
		numbers.reject{ |num| num > 1000 }.sum
	end

	private

	def find_delimeters(numbers) # find custom delimeter
		if numbers.start_with?("//[")
			delimeters = numbers.scan(%r{\[(.*?)\]}).flatten.map { |d| Regexp.escape(d) }
			delimeter = delimeters.join("|")
		else
			delimeter = Regexp.escape(numbers[2])
		end
	end
end