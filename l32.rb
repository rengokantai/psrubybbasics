class L32
end

prices =[12,23,43]

discount = Proc.new do|price|
  price -(price*0.15)
end
#Note fn name must be "map".  No other names!
def map(list, fn)
  results =[]
  list.each do |item|
    results << fn.call(item)
  end
  results
end

puts map(prices, discount)

puts prices.map(&discount)