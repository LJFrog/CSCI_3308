#Part 10: Palindromes Again

class String
	def palindrome?
		@wonly = self.gsub(/\W/, '')
		if @wonly.reverse =~ /#{@wonly}/ix
			true
		else	
			false
		end
	end
end

a = "A man, a plan, a canal -- Panama"
b = "Abracadabra"
puts a.palindrome?
puts b.palindrome?

module Enumerable
	def palindrome?
		if self.reverse == self
			true
		else
			false
		end
	end
end

a = [1,2,1]
b = [1,2,3]
puts a.palindrome?
puts b.palindrome?
