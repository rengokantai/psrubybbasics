

# In ruby, we need to use extend keyword to 'extend' all prop of a module
module Test
  attr_accessor :start

end

class L29
  #include Test
end


usera = L29.new.extend(Test)  # singleton
userb= L29.new
puts usera.methods.grep(/start/)
puts usera.singleton_class.public_instance_methods.grep(/start/)
puts userb.methods.grep(/start/) #nothing
puts userb.singleton_class.public_instance_methods.grep(/start/) #nothing