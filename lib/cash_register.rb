class CashRegister
  attr_accessor :total
  
  def initialize(total = 0, discount = 0)
    @total = 0
    @discount = discount
  end 
  
end 