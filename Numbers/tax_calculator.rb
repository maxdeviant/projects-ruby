class TaxCalculator

    # Tax values by state (in percents)
    tax_values = {
        'AL' => 4, 'AK' => 0, 'AZ' => 6.6, 'AR' => 6, 'CA' => 7.5, 'CO' => 2.9, 'CT' => 6.35, 'DE' => 0, 'DC' => 6,
        'FL' => 6, 'GA' => 4, 'HI' => 4, 'ID' => 6, 'IL' => 6.25, 'IA' => 6, 'KS' => 6.3, 'KY' => 6, 'LA' => 4,
        'ME' => 5, 'MD' => 6, 'MA' => 6.25, 'MI' => 6, 'MN' => 6.875, 'MS' => 7, 'MO' => 4.225, 'MT' => 0, 'NE' => 5.5,
        'NV' => 6.85, 'NH' => 0, 'NJ' => 7, 'NM' => 5.125, 'NY' => 4, 'NC' => 4.75, 'ND' => 5, 'OH' => 5.5, 'OK' => 4.5,
        'OR' => 0, 'PA' => 6, 'PR' => 5.5, 'RI' => 7, 'SC' => 6, 'SD' => 4, 'TN' => 7, 'TX' => 6.25, 'UT' => 4.7, 'VT' => 6,
        'VA' => 5, 'WA' => 6.5, 'WV' => 6, 'WI' => 5, 'WY' => 4
    }

	puts "[ Tax Calculator ]"

    # Gather user input
	print "State in which you reside: "
	state = gets.chomp

	print "Amount on which you will be taxed: $"
	amount = gets.chomp

    # Get tax rate corresponding to the user's state
	rate = tax_values[state] / 100.0
    
    # Calculate tax amount
	tax = amount.to_f * rate.to_f
	#tax = (tax * 100).round.to_f / 100

    # Calculate total cost and round to 2 decimal places
	total = amount.to_f + tax
	total = (total * 100).round.to_f / 100

	puts "Total cost to you is $#{total}. Tax is $#{tax}. Rate is #{tax_values[state]}%."
end
