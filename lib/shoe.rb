class Shoe
  attr_accessor :color, :size, :material, :condition;
  attr_reader :brand;

  BRANDS = [];
  
  def initialize(brand)
    @brand = brand;
    # I think we cant use uniq cause BRANDS is constant but I could be wrong.
   if(!BRANDS.include?(brand))
      BRANDS.push(brand);
   end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end