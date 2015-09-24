class L210
  #Define method_missing method, an arbitrary method must start with letter x
  def method_missing(name, *args)
    if name.to_s.start_with?('x')
      puts "You are x with name #{name} with params #{args.inspect}"
    else
      super
    end
  end
end


L210.new.xxx(:xx)