#write your code here

def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, repeat=2)
	((str+" ")*(repeat)).delete_suffix(" ")
end

def start_of_word(str, int)
	arr = str.split("")
	result = ""
	int.times do |index|
		result+=arr[index]
	end
	return result
end

def first_word(str)
	str.split(" ")[0]
end

def titleize(str)
	arr = str.split(" ")
	arr.each_with_index do |element, index|
		if not(["and", "or", "of", "over", "the"].include?(element)) || index == 0
			arr[index] = element.capitalize
		end
	end
	return arr.join(" ")
end