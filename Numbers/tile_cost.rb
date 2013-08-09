class TileCost
    puts "[ Tile Cost ]"
    
    # Gather user input
    print "Dimensions of floor to be covered [L x W]: "
    input = gets.chomp
    # Get index of split character ('x' or 'X')
    split = input.index(/x/im)
    
    # Split the input to get the length and width of the floor (.strip removes all extra whitespace)
    length = input[0, split].strip
    width = input[split + 1, input.length].strip
    
    puts length, width
    
    # Prompt for cost per tile
    print "Cost per tile: $"
    cost = gets.chomp
    
    # Calculate total cost and round to 2 decimal places
    total = (length.to_f * width.to_f) * cost.to_f
    total = (total * 100).round.to_f / 100
    
    puts "Your new tiles are going to run you $#{total}."
end