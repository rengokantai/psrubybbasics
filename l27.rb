class L27
  attr_accessor :name


end

#[:name :name=]
puts L27.public_instance_methods(false).grep(/name/)