class Shoe
  attr_accessor :brand

  BRANDS = []
  
  def initialize(brand)
    @brand = brand
    BRANDS << brand if !BRANDS.include?(brand)
  end
  
  def brand=(brand)
    @brand = brand
    BRANDS << brand
  end
  
  def self.brands
    BRANDS.uniq
  end

end