class CashRegister
  attr_accessor :total, :discount, :cart 
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end 
  
  def add_item(item, price, quantity = 1)
    quantity.times { @cart << item  }
    @total += (price*quantity) 
  end 
  
  def apply_discount
    @total = @total - (@total*(@discount.to_f/100)).to_i
    if @total == 0 
      puts "There is no discount to apply."
    else 
      puts "After the discount, the total comes to $#{@total}."
    end 
  end 
end 