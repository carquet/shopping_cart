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


screw = Houseware.new("screw", 120)
puts screw.price

hammer = Houseware.new("hammer", 80)
puts hammer.price
