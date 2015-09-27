class L31

  def first_even(list)
    for i in list
      if i.even?
        break i     # break i = break + return i
      end
    end
  end
end


puts L31.new.first_even([1,2,3,4])