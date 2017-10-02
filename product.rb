
class Product

  def self.create(name, base_price, tax_rate)
  product = Product.new(name, base_price, tax_rate)
  end

  def initialize(name, base_price, tax_rate)
    @name = name
    @base_price = base_price
    @tax_rate = tax_rate
  end

end
