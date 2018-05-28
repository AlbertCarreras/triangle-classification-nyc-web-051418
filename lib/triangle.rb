require 'pry'

class Triangle

  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if @length1 <= 0 || @length2 <= 0 || @length3 <= 0

        raise TriangleError

    elsif @length1 == 0 && @length2 == 0 && @length3 == 0

      raise TriangleError

    elsif @length1 + @length2 <= @length3 || @length1 + @length3 <= @length2 || @length2 + @length3 <= @length1

      raise TriangleError

    else

      valid_triangle

    end

  end

  def valid_triangle
    type = ""
    if @length1 == @length2 && @length1 == @length3
      type = :equilateral
    elsif @length1 == @length2 || @length1 == @length3 || @length2 == @length3
      type = :isosceles
    elsif @length1 != @length2 && @length1!= @length3
      type = :scalene
    end
    type
  end

  class TriangleError < StandardError
    def message
        "wrong triangle"
    end
  end
  # binding.pry

end
