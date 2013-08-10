class Palindrome
    # Gather user input
    print "What word do you think is a palindrome?: "
    input = gets.chomp
    
    # Convert to upper case and remove spaces
    input = input.upcase.gsub(/\s+/, "")
    
    # Compare the string with its reverse
    if (input <=> input.reverse) == 0
        puts "Congratulations! It's a palindrome!"
    else
        puts "Aww, looks like it's not a palindrome. Bummer."
    end
end