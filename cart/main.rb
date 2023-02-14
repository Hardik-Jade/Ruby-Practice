# Cart Code Created By Hardik Jade
# VARIABLES
# -------------------------------------------------------
$product_list = []
$cart_list = []
# -------------------------------------------------------s

# INVENTORY RELATED FUNCTIONS
# -------------------------------------------------------s
def add_product(name, quantity, price)
  {'name' => name , 'quantity' => quantity, 'price' => price}
end

def view_inventory(product_list)
  puts "Id \t Name \t Quantity \t Price"
  puts '------------------------------------------'
  product_list.each_with_index do |item,index|
    puts "#{index} \t #{item['name']} \t #{item['quantity']} \t\t #{item['price']}"
  end
  puts '------------------------------------------'
end
# -------------------------------------------------------s

# CART RELATED CODE
# -------------------------------------------------------s
def add_to_cart(index, quantity)
  check_item = $product_list.at(index)
  if check_item && check_item['quantity'] >= quantity
    $cart_list.push({
      'id' => index,
      'name' => check_item['name'],
      'quantity' => quantity,
      'price' => (check_item['price'] * quantity)
    })
    $product_list.at(index)['quantity'] = check_item['quantity'] - quantity
    return true
  end
  false
end

def remove_from_cart(product_id)
  $cart_list.delete_if do |item|
    item['id'] == product_id
  end
end

def update_cart(index, quantity)
  actual_index = $cart_list.find_index do |item|
    item['id'] == index
  end
  if actual_index
    $cart_list[actual_index]['quantity'] = quantity
    true
  else
    false
  end
end

def view_cart
  puts "Id \t Name \t Quantity \t Total Price"
  puts '------------------------------------------'
  $cart_list.each_with_index do |item, index|
    puts "#{index} \t #{item['name']} \t #{item['quantity']} \t\t #{item['price']}"
  end
  puts '------------------------------------------'
end

def checkout
  puts 'enter percent discount'
  discount = gets.chomp.to_i
  total = 0
  $cart_list.each do |product_item|
    total = product_item['price'] + total
  end
  total -= 0.01 * discount * total
  puts "total bill is #{total}"
end
# -------------------------------------------------------s


# INITIALIZATION
# -------------------------------------------------------
puts '-------------------------------------------------------'
puts 'WELCOME TO THE G DROP SHOPPING PLEASE ADD SOME PRODUCTS TO CONTINUE'
puts '-------------------------------------------------------'
while true
  puts '1. add the product'
  puts '2. go for shopping'
  puts '3. view inventory'
  choice = gets.chomp.to_i
  case choice
    when 1
      puts 'enter the name of the product'
      name = gets.chomp
      puts 'enter the quantity'
      quantity = gets.chomp.to_i
      puts 'enter price'
      price = gets.chomp.to_i
      product = add_product(name, quantity, price)
      $product_list.push(product)
      puts 'item added to the inventory'
    when 2
      break
    when 3
      view_inventory($product_list)
    else
      puts 'please select the valid choice'
  end
end
# -------------------------------------------------------

# GO FOR SHOPPING
# -------------------------------------------------------
while true
  puts 'please select the proper choice'
  puts '1. view product list'
  puts '2. add item to cart'
  puts '3. view cart'
  puts '4. update cart'
  puts '5. remove item from cart'
  puts '6. checkout'
  puts '7. exit'
  choice = gets.chomp.to_i
  case choice
    when 1
      view_inventory($product_list)
    when 2
      puts 'enter the id of product'
      index = gets.chomp.to_i
      puts 'enter the quantity of product'
      quantity = gets.chomp.to_i
      add_to_cart(index, quantity)
    when 3
      view_cart
    when 4
      puts 'please provide the id of the item'
      index = gets.chomp.to_i
      puts 'enter quantity'
      quantity = gets.chomp.to_i
      update_cart(index, quantity)
    when 5
      puts 'enter the id of the product'
      product_id = gets.chomp.to_i
      remove_from_cart(product_id)
    when 6
      checkout
    when 7
      return
    else
      puts 'please select the proper choice'
  end
end
# -------------------------------------------------------
