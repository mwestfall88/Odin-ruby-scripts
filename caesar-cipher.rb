def caesar_cipher(str, i)
	alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l']
	alphabet.push('m','n','o','p','q','r','s','t','u','v','w','x','y','z')
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

