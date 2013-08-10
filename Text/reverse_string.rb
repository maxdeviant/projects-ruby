class ReverseString
    puts "[ Reverse String ]"
    
    # Gather user input
    print "Enter a string to reverse: "
    input = gets.chomp
    
    # Reverse the string
    puts "Reversed: #{input.reverse}"
end