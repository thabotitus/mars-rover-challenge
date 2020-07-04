class Plateau
  def self.generate(width, height)
    Array.new(height + 1) do 
      Array.new(width + 1)
    end
  end
end
