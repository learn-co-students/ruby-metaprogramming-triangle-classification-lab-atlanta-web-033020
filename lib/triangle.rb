class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    
  end
  def kind 
    real_triange?
    if side_a == side_b && side_b == side_c
      :equilateral
    elsif side_a == side_b || side_b == side_c || side_c == side_a
      :isosceles
    else :scalene
    end
  end
  def real_triange? 
    valid_tri = [(side_a + side_b > side_c),(side_a + side_c > side_b),(side_b + side_c > side_a)]
    [side_a,side_b,side_c].each{|s| valid_tri << false if s <= 0
    raise TriangleError if valid_tri.include?(false)}
  end
  class TriangleError < StandardError

  end
end
