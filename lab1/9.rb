#Part 9: Currency Conversion
class Numeric
	
	def in(curr)
		self / @@currencies[curr.to_s.gsub(/s$/, '')]
	end
	
	@@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
	
	def method_missing(method_id)
  	singular_currency = method_id.to_s.gsub( /s$/, '')
  	if @@currencies.has_key?(singular_currency)
    	self * @@currencies[singular_currency]
   	else
     super
   end
 end

end

puts 5.dollars.in(:euros)
puts 10.euros.in(:rupees)
