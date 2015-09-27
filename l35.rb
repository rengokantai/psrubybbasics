class L35
  def initialize(desc, calc)
    @desc = desc
    @calc = calc
  end

  def apply(total)
    total - @calc[total]     # note square bracket
  end
end


puts L35.new("first", -> total{ total*2}).apply(100)


# Now we start currying!
calc = -> threshold, discount,total do
  total > threshold ? total * discount :0
end

test1 = calc.curry[50,0.1]

puts test1[100]

#apply it to L35

puts test2 = L35.new("modified!", test1).apply(300)
#########################################
mult = -> a,b{a*b}

puts mult[2,3]

#curry first param
a = mult.curry[2]

puts a[2]