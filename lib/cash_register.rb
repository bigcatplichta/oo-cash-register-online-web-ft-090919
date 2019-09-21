class CashRegister
  attr_accessor :total, :discount, :cart 
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end 
  
  def add_item(item, price, quantity = 1)
    @cart << item * quantity 
    @total += price 
  end 
end 