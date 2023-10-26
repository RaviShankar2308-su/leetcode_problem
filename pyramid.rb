class Pyramid
  def make_pyramid
    num = 1
    for i in 1..4
      for j in 1..i
        if i == j
          print "*"
        else
          print "#{num} "
        end
        num = num + 1
      end
      puts
    end
  end
end

p = Pyramid.new
p.make_pyramid