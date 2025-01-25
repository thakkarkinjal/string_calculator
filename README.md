# String Calculator

This project implements a simple string calculator with the following features:

* Accepts a string of comma-separated numbers as input.

* Returns the sum of the numbers as an integer.

* Handle newline as a delimiter.

* Support custom single/multiple character delimiters.

* Ignores numbers greater than 1000.

* Raise errors for negative numbers.

## Installation

1. **Clone the Repository**

	```bash
	git clone https://github.com/thakkarkinjal/string_calculator.git

2. **Navigate to the Project Directory**

	```bash
	cd string_calculator

3. Install Dependencies
	```bash
	bundle install

## Usage

### Basic Usage

To use the calculator, create an instance of the `Calculator` class and call the `add` method with a string of numbers.

```markdown
calculator = Calculator.new
result = calculator.add("2,3,4")
puts result  # Output: 9

### Custom Delimiters

You can specify custom delimiters at the beginning of the string using the format '//[delimiter]\n'.

```markdown
calculator.add("//;\n2;3;4") # => 9

### Delimiters of Any Length

Custom delimiters can be of arbitrary length.

```markdown
calculator.add("//[***]\n2***3***4") # => 9

### Multiple Delimiters

You can specify multiple delimiters

```markdown
calculator.add("//[*][%]\n2*3%4") # => 9

### Handling Newlines

The calculator can handle newlines between numbers.

```markdown
calculator.add("2\n3,4") # => 9

### Ignoring Numbers Greater than 1000

Numbers greater than 1000 are ignored in the calculation.

```markdown
calculator.add("5,1002") # => 5

### Negative Numbers

If the input string contains negative numbers, an ArgumentError will be raised.

```markdown
calculator.add("-2,3,4") # => Raises ArgumentError


## Testing

To run the test suite, use RSpec:


```markdown

bundle exec rspec


## Ruby and Rails Versions

* **Ruby version**: 3.2.0
* **Rails version**: 7.1.5
