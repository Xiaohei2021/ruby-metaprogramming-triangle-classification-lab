require 'pry'
class Triangle
  # write code here
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b 
    @c = c 
  end


  def kind
    proper_triangle
      if a == b && b == c
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles
      else
        :scalene
      end
    end

    def proper_triangle
      proper_sides = [(a + b > c), (a + c > b), (b + c > a)]
      [a, b, c].each do |side|
        proper_sides << false if side <= 0 
      raise TriangleError if proper_sides.include?(false)
      end
    end

  class TriangleError < StandardError
  end

end
