class ShoppingCart
	def inititalize
		@items = []
	end
end


class Item
	attr_reader :name, :base_price, :day
	def initialize(name, base_price, day = false)
		@name = name
		@base_price = base_price
		@day = day 
	end	
	def price
		price = @base_price
	end
end



class Houseware < Item
	def price
		if @base_price >= 100
			@base_price -=  (@base_price * 5)/100
		else
			 @base_price
		end
	end
end

class Fruit < Item
	def price
		# days == true are week end days.
		if @day == true
			@base_price -=  (@base_price * 10)/100
		else
			@base_price
		end
	end
end

class ShoppingCart
	def initialize
		@item = []
	end

	

	def total_price
		total_amount_to_pay = 0
		@item.each do |item|
			total_amount_to_pay += item.price
		end
		total_amount_to_pay
	end
end




#iteration one
banana = Fruit.new("banana", 10, true)
puts banana.price
apple = Fruit.new("apple", 11, false)
puts apple.price
orange_juice = Item.new("Orange Juice", 10)
puts "the price of orange juice is :#{orange_juice.price} euros"
rice = Item.new("rice", 1)
puts "the price of rice is : #{rice.price} euro"
vacuum_cleaner = Houseware.new("vacuum cleaner", 150)
puts "this is the price for a vacuum cleaner: #{vacuum_cleaner.price} euros"
anchovies = Item.new("anchovies", 2)
puts "this is the price for anchovies : #{anchovies.price} euros"








