class CountVowels
    vowels = "AaEeIiOoUuYy"
    
    # Gather user input
    print "Say something: "
    input = gets.chomp
    
    vowel_count = 0;
    
    # Loop through each character in the string
    input.each_char {|c| 
        # Loop through each vowel
        vowels.each_char {|v|
            # If the current character is a vowel, increment the counter
            if c == v
                vowel_count += 1
            end
        }
    }
    
    puts "Vowels: #{vowel_count}"
end