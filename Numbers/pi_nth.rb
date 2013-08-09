class PiNth
    # Hard-coded value for pi
    pi = "3.14159265358979323846264338327950288419716939937510582097494459230781640628620899862803482534211706798214"

    puts "[ Pi to the Nth ]"
    
    # Gather user input
    print "N: "
    input = gets.chomp
    
    # Convert user string to integer
    n = Integer(input)
    
    # If the n is within range, output the values of pi to the Nth value
    if n < pi.length
        puts pi[0..n]
    # Else throw an error message
    else
        puts "We may be programmers, but we're not magicians! Try a smaller N."
    end
end