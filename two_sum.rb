class TwoSum
  def two_sum(nums, target)
    for i in 0..nums.length-1
      for j in i+1..nums.length-1
        if nums[i] + nums[j] == target
          return [i,j]
        end
      end
    end
    return "nil"    
  end
end

puts "Enter your numbers"
nums = Array.new
n = gets
nums = n.split(" ")

puts "Enter your target"
target = gets

sum = TwoSum.new

puts "Output:"
puts sum.two_sum(nums, target)
