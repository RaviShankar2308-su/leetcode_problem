class CheckPalindrome

  def x_positive(x,a)
    while x > 0
      a.push(x%10)
      x = x/10
    end
    check_palindrome(a)
  end

  def check_palindrome(a)
    i = 0
    j = a.length - 1
    while i < a.length/2 || j > a.length/2
      if a[i] != a[j]
        return false    
      end
      i = i+1
      j= j-1
    end
    return true
  end
end

puts "Enter any number"
c = CheckPalindrome.new
x = gets.chomp.to_i
a = Array.new
puts x>=0 ? c.x_positive(x,a) : false