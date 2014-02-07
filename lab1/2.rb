# Part2: Strings
def palindrome?(string)
	@wonly = string.gsub(/\W/, '')
	if @wonly.reverse =~ /#{@wonly}/ix
		true
	else	
		false
	end
end
puts "#2\n"
puts palindrome?("A man, a plan, a canal -- Panama")
puts palindrome?("Madam, I'm Adam!")
puts palindrome?("Abracadabra")
