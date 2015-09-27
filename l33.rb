class L33
end




# block_given? test
def called_with_bolck?
  if block_given?
    puts "called with block"
  end
end


called_with_bolck?  #print nothing

called_with_bolck? do
  1
end




def yield_test
  puts "before"
  yield
  puts "after"
end

yield_test do
  puts "yield!"
end





#implement own iterator (add list as param)

def each_of_list(list)
  for i in 0..(list.length-1)
    yield list[i]
  end
end


each_of_list([1,2,3]) do |x|
  puts x*2
end


def search_words(word)
  results =[]
  word.split.each do |word|
    results << yield(word)
  end
  results
end

search_words("ha hello") do |word|
  puts word.size
end