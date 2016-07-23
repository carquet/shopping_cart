class ShoppingCart
	def inititalize
		@items = []
	end
end


class Item
	attr_reader :name, :base_price
	def initialize(name, base_price)
		@name = name
		@base_price = base_price
	end	
	def price
		price = @base_price
	end
end



class Houseware < Item
	def price
		if @base_price >= 100
			puts @base_price +=  (@base_price * 5)/100
		else
			puts @base_price
		end
	end
end

class Fruits < Item
	def price(days)
		mon = 1
		tue = 2
		wed = 3 
		thu = 4
		fri = 5
		sat = 6
		sun = 7
		if days == (6..7)
			puts @base_price +=  (@base_price * 10)/100
		else
			puts @base_price
		end
	end
end


milk = Item.new("milk", 10)
puts milk.price

#trying out different hardware with or without discount
screw = Houseware.new("screw", 120)
puts screw.price

hammer = Houseware.new("hammer", 80)
puts hammer.price

#trying different fruits according to the day
apple = Fruits.new("apple",10)
puts apple.price(6)

pear = Fruits.new("pear", 25)
puts pear.price(2)









