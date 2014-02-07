#Part 11: Blocks
class CartesianProduct
  include Enumerable
  def initialize(first,second)
  	@product = []
  	first.each do
  		|a|
  		second.each do
  			|b|
  			@product.concat([[a,b]])
  		end
  	end
  end
  def each
  #	puts "#{@product}"
  	@product.each do |x|
  		yield x
  	end
  end
end

#Example test cases:

c = CartesianProduct.new([:a,:b], [4,5,6])
c.each { |elt| puts elt.inspect }
# [:a, 4]
# [:a, 5]
# [:b, 4]
# [:b, 5]

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
# Nothing printed since Cartesian pr

