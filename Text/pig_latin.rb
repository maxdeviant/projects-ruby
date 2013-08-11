class PigLatin
	vowels = "AEIOUY"

	def find(input)
		for i in 0..input.length
    		puts i
    		vowels.each_char {|v|
    			if input[i].upcase == v
    				return input[i..input.length].to_s + input[0, i].to_s + "ay"
    				# puts latin
    				# break
    			end
    		}
    	end
	end

	puts "[ Pig Latin ]"

	# Gather user input
	print "> "
	input = gets.chomp

	latin = ""
	isVowel = false

	vowels.each_char {|v|
        if input[0].upcase == v
        	isVowel = true
        end
    }

    if isVowel    	
    	latin = "#{input}way".capitalize
    else
    	latin = find input
    	puts latin

    	

    	# Go through each character in the input string
    	# input.each_char {|c|
    	# 	count = 0
    	# 	# Go though each vowel
    	# 	vowels.each_char {|v|
    	# 		# Check if the current character is a vowel
    	# 		if c.upcase == v
    	# 			#latin = "#{input[count..input.length]}#{input[0, count]}ay".capitalize
    	# 			puts count
    	# 			latin = input[count..input.length].to_s + input[0, count].to_s + "ay"
    	# 			puts latin
    	# 			break
    	# 		else
    	# 			count += 1
    	# 		end
    	# 	}
    	# }

		#latin = "#{input[1..input.length]}#{input[0]}ay".capitalize
    end

	puts latin
end