class ShoppingCart
	def inititalize
		@items = []
	end
end

class Item
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end
