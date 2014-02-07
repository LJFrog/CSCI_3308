#Part 7 Object-Oriented Programming
puts "#7"
class Dessert
	def initialize(name, calories)
	  @name = name
	  @calories = calories
	end

	def healthy?
		@calories < 200
	end

	def delicious?
		true
	end
	
	def say
		puts "Dessert of name: #{@name} calories: #{@calories}"
	end
end

icecream=Dessert.new("Ice Cream", 250)
icecream.say
puts icecream.healthy?
puts icecream.delicious?

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end

  def delicious?
		@flavor != "black licorice"
  end
	
	def say_f
		puts "Jellybean of flavor: #{@flavor}"
	end
end

yucky=JellyBean.new("BL",15,"black licorice")
yucky.say
yucky.say_f
puts yucky.healthy?
puts yucky.delicious?

