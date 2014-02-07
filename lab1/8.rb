#Part 8: Object Oriented Programming
class Class
  def attr_accessor_with_history(attr_name)

    attr_name = attr_name.to_s       # make sure it's a string
    attr_reader attr_name            # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter

    class_eval "%Q
    	def asetter_with_history(attr_name)
    		attr_name = attr_name.to_s
    		@history = [nil]
    		def #@{attr_name}(new)
    			@history.concat([new])
    			attr_name = new
    		end
    	end		
    "
  end
end

class Foo
  attr_accessor_with_history :bar
end

f = Foo.new     # => #<Foo:0x127e678>
f.bar = 3       # => 3
f.bar = :wowzo  # => :wowzo
f.bar = 'boo!'  # => 'boo!'
f.bar_history   # => [nil, 3, :wowzo, 'boo!']
