#Part5: Anagrams
def combine_anagrams(words)
	@output = []
	@found = false
	words.each do
		|x|
		if @output.length == 0
			@output.concat([[x]])
		else
			@found = false
			@i = 0
			while @found == false and @i < @output.length
				#puts "#{x.downcase.chars.sort.join} vs #{@output[@i][0].downcase.chars.sort.join}"
				if x.downcase.chars.sort.join==@output[@i][0].downcase.chars.sort.join
					@output[@i].concat([x])
					#puts "array is: #{@output}"
					@found = true
				else
				end
				@i = @i+1
			end
			if @found == false
				@output.concat([[x]])
				#puts "array is: #{@output}"
			else
			end
		end
	end
	puts "#{@output}"
  #take 1st word, put it in output[0] making its own array
  #compare next word (sorted, case disregarded) to each (first) word in output
  #if it matches, add it to that array
  #otherwise, add it to a new array at the end of output
  #return output
end
puts "#5\n"
combine_anagrams(['cars','for','potatoes','racs','four','scar','creams','scream'])

