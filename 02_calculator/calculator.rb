#write your code here
def add(int1, int2)
	return int1 + int2
end

def subtract(int1, int2)
	return int1 - int2
end

def sum(array)
	array.reduce(0) {|sum, element| sum+element}
end

def multiply(array)
	array.reduce(:*)
end

def power(base, exponent)
	base**exponent
end

def factorial(int)
	1.upto(int).inject(1,:*)
end