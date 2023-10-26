class RomanToInt
  def roman_to_int(s)
    num = 0
    i = 0
    str_arr = s.split("")
    while i < str_arr.length
      case str_arr[i]
      when "I"
        if str_arr[i+1] == "V"
          num = num+4
          i = i+1
        elsif str_arr[i+1] == "X"
          num = num+9
          i = i+1
        else
          num = num+1
        end

      when "V"
        num = num+5

      when "X"
        if str_arr[i+1] == "L"
          num = num+40
          i = i+1
        elsif str_arr[i+1] == "C"
          num = num + 90
          i = i+1
        else
          num = num + 10
        end

      when "L"
        num = num + 50
      
      when "C"
        if str_arr[i+1] == "D"
          num = num + 400
          i = i+1
        elsif str_arr[i+1] == "M"
          num = num + 900
          i = i+1
        else
          num = num + 100
        end

      when "D"
        num = num + 500
      when "M"
        num = num + 1000
      end
      i = i+1
    end
    return num
  end
end

r = RomanToInt.new
puts r.roman_to_int("II")