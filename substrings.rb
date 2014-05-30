=begin

Implement a method substrings that takes a word as the first argument and then an array 
of valid substrings (your dictionary) as the second argument. It should return a hash listing
each substring (case insensitive) that was found in the original string and how many times it was found.

=end

def substrings(string, dictionary)

	letters = string.split("")

	word_count = Hash.new(0)

	dictionary.each do |key|
		key_letters = key.split("")
		letters.each_with_index do |letter, i|
			if letter.casecmp(key_letters[0]) == 0
				match = true
				if letters.length - i >= key_letters.length
					key_letters.each_with_index do |key_letter, j|   #Makes sure there is enough room left in the array
						if key_letter.casecmp(letters[i+j]) == 0
							match = true
						else
							match = false
							break
						end
					end
					word_count[key_letters.join] += 1 if match
				end
			end
		end

	end

	word_count

end






