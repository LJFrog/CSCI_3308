#Part6: Strings & Regular Expressions
def glob_match(filenames, pattern)
	@match = []
	pattern.gsub!(/[*?]/, '*' => '.*', '?' => '.')
	filenames.each do
		|x|
		if x =~ /#{pattern}/
			@match.concat([x])
		end
	end
	@match
end
puts glob_match(["part1.rb","part2.rb","part2.rb~","part3.rb.un~"],"*part*rb?*")
