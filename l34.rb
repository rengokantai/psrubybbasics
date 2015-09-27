class L34
end

#proc style
cheap = Proc.new do|price|
  price <10
end

puts cheap.call(100)
puts cheap[10]
puts cheap.(100)

#lambda style
cheaplambda = lambda {|price| price<10}

puts cheaplambda.call(100)
puts cheaplambda[10]
puts cheaplambda.(100)

#lambda style
cheaparrow = -> price {price<10}

puts cheaparrow.call(100)
puts cheaparrow[10]
puts cheaparrow.(100)

#with multiple params
cheaparrow = -> price1, price2 {[price1, price2].min}

puts cheaparrow.call(100,50)
puts cheaparrow[10,50]
puts cheaparrow.(100,50)



#exercise

p = Proc.new {|x| "#{x.inspect}"}   #If 0 arg, no error
l = -> x {"#{x.inspect}"}    # must provide at least 1 arg

def modify_prices(prices, &block)
  block.inspect
end

puts modify_prices([10,20]){|p|p*2}



#proc call

#Ex

puts :even?.to_proc.call(10)