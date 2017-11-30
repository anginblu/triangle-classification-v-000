class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = []
@sides << side1
@sides << side2
@sides << side3
  end

  def sides
    @sides
#    @middle = @sides.find_all {|i| i != sides.max }
  end

  def max
    self.sides.max
  end

  def min
    self.sides.min
  end

  def middle

  def kind
    if self.sides.any? {|i| i <= 0}
        raise TriangleError
        puts error.message
    elsif (self.min + self.middle) <= self.max
      raise TriangleError
      puts error.message
    elsif @side1 == @side2 && @side2 == @side3
        :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
        :isosceles
    else
        :scalene
    end

  end

end

class TriangleError < StandardError
  def message
    "Your triangle is illegal"
  end

end
