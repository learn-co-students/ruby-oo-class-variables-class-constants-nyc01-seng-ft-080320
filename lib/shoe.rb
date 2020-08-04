class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  # I really don't understand why we're using a constant here...
  # aren't constants only supposed to be for things that will never change?
  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand
    BRANDS.uniq!
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def brand=(brand)
    @brand = brand
    BRANDS << brand
    BRANDS.uniq!
  end

end