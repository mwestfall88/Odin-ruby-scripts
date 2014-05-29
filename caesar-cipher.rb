def caesar_cipher(str, i)
	alphabet = ('a'..'z').to_a
	cipher  = ""

	str.each_char do |char|
		if alphabet.include?(char)
			char_index = alphabet.find_index(char) + i
			char_index = char_index - alphabet.length if char_index >= alphabet.length
			cipher += alphabet[char_index]
		elsif alphabet.include?(char.downcase)
			char_index = alphabet.find_index(char.downcase) + i
			char_index = char_index - alphabet.length if char_index >= alphabet.length
			cipher += alphabet[char_index].upcase
		else
			cipher += char
		end
	end


	cipher
end