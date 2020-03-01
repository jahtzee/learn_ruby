#write your code here
def translate(string)
	sentence = string.split(" ")
	sentence.each_with_index do |element, index|
		sentence[index] = translateWord(element)
	end
	return sentence.join(" ")
end

def translateWord(string)
	if string.capitalize == string then #check for capitalization
		is_capitalized = true
	end

	word = string.split("") #split the word into an array of indivdual characters
	punctuation = getPunctuation(word)

	if punctuation then
		word.pop
	end

	if isVowel?(word[0]) then #If the word starts with a vowel
		word.push("a")
		word.push("y")
	else #If the word starts with a consonant
		while not(isVowel?(word[0])) do #While there is a consonant at the start of the word...

			if (word[0].downcase == "q" && word[1].downcase == "u") then #If word starts with "qu", push one more consonant to the back than otherwise
				word.push(word.delete_at(0).downcase)
			end

			word.push(word.delete_at(0).downcase) #move it from the front to the back
		end
		word.push("a")
		word.push("y")
	end

	if is_capitalized then #restore capitalization
		word[0] = word[0].capitalize
	end

	if punctuation then #restore punctuation
		word.push(punctuation)
	end

	return word.join
end

def getPunctuation(array)
	if [".", ",", "!", "?", ":"].include?(array.last) then
		return array.last
	else
		return nil
	end
end

def isVowel?(string)
	#puts string.downcase
	#puts ["a", "e", "i", "o", "u"].include?(string.downcase)
	if ["a", "e", "i", "o", "u"].include?(string.downcase) then
		true
	else
		false
	end
end