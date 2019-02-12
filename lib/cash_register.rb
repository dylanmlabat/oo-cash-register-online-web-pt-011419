class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      @items << item
    end
    self.last_transaction = price * quantity
    @total += price * quantity
    quantity.times do
      @items << item
    end
    @last_transaction = price * quantity
>>>>>>> e43a429b20e808afc64f16308a4bde07b214085e
  end
  
  def apply_discount
    if discount != 0
<<<<<<< HEAD
      self.total = (total * ((100.0 - discount) / 100))
      "After the discount, the total comes to $#{self.total.to_i}."
=======
      self.total = (total * ((100 - discount) / 100))
      "After the discount, the total comes to $#{self.total}."
>>>>>>> e43a429b20e808afc64f16308a4bde07b214085e
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
<<<<<<< HEAD
    self.total = total - last_transaction
=======
    @total = @total - @last_transaction
>>>>>>> e43a429b20e808afc64f16308a4bde07b214085e
  end
end