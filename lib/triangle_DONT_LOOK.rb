class Triangle

  attr_reader :sideA, :sideB, :sideC
  
  def initialize(sideA, sideB, sideC )
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def kind
    validate_tri
    if sideA == sideB && sideB == sideC
      :equilateral
    elsif sideA == sideB || sideB == sideC || sideA == sideC
      :isosceles
    else 
      :scalene
    end
  end

  def size?
     sideA > 0 && sideB > 0 && sideC > 0
  end

  def valid_tri?
    sideA + sideB > sideC && sideA + sideC > sideB && sideB + sideC > sideA
  end

  def validate_tri
    raise TriangleError unless size? && valid_tri?
  end

  class TriangleError < StandardError
  end 

end
