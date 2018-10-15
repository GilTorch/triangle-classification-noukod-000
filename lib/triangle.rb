class Triangle
  # triangle code

  def initialize(side1,side2,side3)
    @sides=[]
    @sides << side1
    @sides << side2
    @sides << side3
    @sides=@sides.sort
  end

  def kind
    if @sides.all?{|side| side >=0} || @sides[0]+@sides[1] > @sides[2]
      if @sides.all?{|side| side==@sides[0]}
        :equilateral
      elsif
        :isosceles
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
