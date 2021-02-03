class CashRegister
    attr_accessor :discount, :total, :item

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @cart = []
    end

    def add_item(item, price, quantity=1)
        quantity.times do 
            @cart << item
        end
        @last_total = @total
        @total += price * quantity
    end 
    
    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        end
        @total -= @total * @discount/100
        return "After the discount, the total comes to $#{@total}."
    end 

    def items
        @cart
    end 

    def void_last_transaction
        @total = @last_total
    end 
end 
