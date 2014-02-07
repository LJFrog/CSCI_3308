# Part3: Word Count
def count_words(string)
	@hash = {}
  @s = string.downcase.split(/\W+/)
  @s.each do
  	#if hash exists, add one to hashed value
    |x|
    if @hash.has_key?(x)
    	@hash[x] = @hash[x] + 1
    else
    	@hash.merge!(x => 1)
    end
  end
  @hash
end
puts "#3\n"
puts count_words("A man, a plan, a canal -- Panama")
puts count_words("Do bee do bee do")
