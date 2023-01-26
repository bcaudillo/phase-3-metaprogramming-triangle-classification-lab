class Triangle

    attr_reader :sideA, :sideB, :sideC

    def initialize(sideA, sideB, sideC)
        @sideA = sideA
        @sideB = sideB
        @sideC = sideC
    end

    def kind
        valid_triangle
        if sideA == sideB && sideB == sideC
            :equilateral
        elsif sideA == sideB || sideB ==sideC || sideA == sideC
            :isosceles
        else
            :scalene
        end
    end

    def is_triangle?
        sideA + sideB > sideC && sideA + sideC > sideB && sideB + sideC > sideA
    end

    def size?
        sideA > 0 && sideB > 0 && sideC > 0
    end

    def valid_triangle
        raise TriangleError unless is_triangle? && size?
    end



    class TriangleError < StandardError
    end
   

end
