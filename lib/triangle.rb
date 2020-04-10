require 'pry'
class Triangle
  
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    sorted = [a, b, c].sort
    if sorted[0] + sorted[1] <= sorted[2] || a+b+c == 0
      begin
        raise TriangleError
      end
    elsif a == b && a == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "these can't form a triangle!"
    end
  end
end