class AddToArray
  def add_to_array(l1, l2)
    l1_val = arr_to_integer(l1.reverse)
    l2_val = arr_to_integer(l2.reverse)
    total_value = l1_val + l2_val
    puts reverse_integer(total_value)
  end

  def arr_to_integer(l)
    val = 0
    l_length = l.size - 1
    for i in 0..l_length do
      val = val*10 + l[i]
    end
    val
  end

  def reverse_integer(total_value)
    a = []
    while total_value > 0
      a.push(total_value%10)
      total_value = total_value/10
    end
    a
  end
end


l1 = [2,4,3]
l2 = [5,6,4]
sum = AddToArray.new
sum.add_to_array(l1, l2)