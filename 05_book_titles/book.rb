class Book
# write your code here
	def title
		return @title
	end

	def title=(title)
		array = title.split(" ")
		array.each_with_index do |element, index|
			if not(["and", "in", "the", "of", "a", "an"].include?(element.downcase)) || index == 0 then
				array[index] = element.capitalize
			end
		end
		@title = array.join(" ")
	end
end