
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


'''Funny....without the price variable, the discount is made on the total amount to pay whereas it is not needed in Fruit....WHY? '''
class Houseware < Item
	def price
		if @base_price >= 100
			price = @base_price -(@base_price * 5)/100
		else
			 price = @base_price
		end
	end
end

class Fruit < Item
	def price
		# days == true are week end days.
		if @day == true
			@base_price -  (@base_price * 10)/100
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
momma_list.add_item(apple)
momma_list.add_item(orange_juice)
momma_list.add_item(rice)
momma_list.add_item(vacuum_cleaner)
puts "This is the total price of your cart: #{momma_list.total_price} euros"

pop_list = ShoppingCart.new
pop_list.add_item(banana)
pop_list.add_item(apple)
pop_list.add_item(orange_juice)
pop_list.add_item(rice)
pop_list.add_item(vacuum_cleaner)
pop_list.add_item(anchovies)
puts "This is the total price of your cart: #{pop_list.total_price} euros"






