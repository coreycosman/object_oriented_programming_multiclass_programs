
require_relative("product")
class Shopping_Cart

@@cart = []

def self.cart_reader
  @@cart
end


  def self.create
    shopping_cart = Shopping_Cart.new
  end

  def initialize
  end


  def add_product(product_name)
    @@cart << product_name
    return Shopping_Cart.cart_reader
  end

  def remove_product(product_name)
    @@cart.delete(product_name)
    return Shopping_Cart.cart_reader
  end

  def cart_sum
    total = 0
    @@cart.each do |v|
    price = v.fetch(1)
    total += price
    end
  end

end



#________________________________________________________
p apple = Product.create("apple", 2, 0.13)
p orange = Product.create("orange", 3, 0.13)
p banana = Product.create("banana", 2.5, 0.13)
p cart_1 = Shopping_Cart.create
p cart_1.add_product(apple)
p cart_1.remove_product(apple)
p cart_1.add_product(apple)
p cart_1.add_product(orange)
p cart_1.add_product(banana)
p cart_1.cart_sum
