class Plateau
  def initialize(width, height)
    @width = width + 1
    @height = height + 1
  end

  def generate
    Array.new(@height) do 
      Array.new(@width)
    end
  end
end
