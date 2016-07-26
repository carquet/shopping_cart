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
		@day = day 
	end	
	def price
		price = @base_price
	end
end

#this shouldnt be on my master

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
	attr_reader :day
	def initialize (name, base_price, day)
		super(name)
		super(base_price)
		@day = day
	end

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

	def add_item(item)
		@item.push(item)
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
puts "This is the price for banana at the week end : #{banana.price}"
apple = Fruit.new("apple", 11)
puts "this is the price of apple on week days: #{apple.price}"
orange_juice = Item.new("Orange Juice", 10)
puts "the price of orange juice is :#{orange_juice.price} euros"
rice = Item.new("rice", 1)
puts "the price of rice is : #{rice.price} euro"
vacuum_cleaner = Houseware.new("vacuum cleaner", 150)
puts "this is the price for a vacuum cleaner: #{vacuum_cleaner.price} euros"
anchovies = Item.new("anchovies", 2)
puts "this is the price for anchovies : #{anchovies.price} euros"

momma_list = ShoppingCart.new
momma_list.add_item(banana)
momma_list.add_item(orange_juice)
momma_list.add_item(vacuum_cleaner)
print "This is the total price of your cart: #{momma_list.total_price} euros"






