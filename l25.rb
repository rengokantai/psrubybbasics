a= [1,2,3,4]

puts a.select(&:even?)

puts a.select{|x| x.even?}



class L25
  #getter
  def initialize(name)
    @name=name
  end
  def name
    @name
  end
  #getter
  def name=(name)
    @name = name
  end

  #boolean

  def can?
    @name = "can"
  end

  #lookout!
  def lookout!
    "xx"
  end


  def odd_or_even(num)
    return unless num.respond_to?(:odd?)
    if num.odd? then "odd" else "even" end
  end

end

puts L25.new("x").odd_or_even("d")