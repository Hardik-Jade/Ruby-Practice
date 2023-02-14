# frozen_string_literal: true

# ----------------------------------------------------------------------
# This is the example class for testing
class ExampleClass
  # Reader works as getter
  # ----------------------------------------------------------------------
  attr_reader :email
  # Writer works as setter
  attr_writer :email
  # Accessor works as both reader and writer
  attr_accessor :phone
  # ----------------------------------------------------------------------


  # constructor
  # ----------------------------------------------------------------------
  def initialize(name, email, phone)
    @name = name
    @email = email
    @phone = phone
    puts 'this is the constructor of the class'
    puts "this is string interpolation #{@name} #{@email} #{@phone}"
  end
  # ----------------------------------------------------------------------

  # Instance method
  # ----------------------------------------------------------------------
  def some_method
    puts('this is instance method in ruby')
  end
  # ----------------------------------------------------------------------

  # Class Method
  # ----------------------------------------------------------------------
  def self.some_class_method
    puts 'this is the class method in ruby'
  end
  # ----------------------------------------------------------------------

  # getter
  # ----------------------------------------------------------------------
  def name
    @name
  end
  # ----------------------------------------------------------------------

  # setter
  # ----------------------------------------------------------------------
  def name=(name)
    @name = name
  end
  # ----------------------------------------------------------------------
end

# puts '----------------------------------------------------------------------'
# object = ExampleClass.new('Hardik', 'hardik.jade@google.com', '8550956744')
# puts object.name
# puts object.email
# puts object.phone
# puts '----------------------------------------------------------------------'
# object.name = 'Jade'
# object.email = 'hardik.jade@kylas.io'
# object.phone = '9420665548'
# puts object.name
# puts object.email
# puts object.phone
# puts '----------------------------------------------------------------------'
# ----------------------------------------------------------------------

arr = [50] * 10
# insert at end
arr.push(10)
arr << 20
# insert at beginning
arr.unshift(20)

# Remove from beginning
arr.shift
# remove from end
arr.pop

# gives uniq item in array
another_arr = arr.uniq

# delete all appearance of the item in array
arr.delete(10)
arr.delete_at(5)
arr << nil
puts arr.inspect
puts another_arr.inspect

# remove nil from array
puts arr.compact.inspect
# puts arr.at(500).inspect

puts arr.methods.count
puts another_arr.sort.reverse.inspect

arr = [1, 2, 3, [1, 2, 3], [[1, 2, 3], 1, 2, 3]]
puts arr.flatten.inspect
# convert each element of array to seperate array
puts arr.product.inspect
# ----------------------------------------------------------------------
# Hash In Ruby
# ----------------------------------------------------------------------
hash = { 'hardik' => 'jade' }
hash[:item] = '10'
hash2 = ['first' => 'name']
# check if the hash is empty or not
# ----------------------------------------------------------------------
puts hash.empty?
# check if the hash2 is equal to hash1
puts hash.eql?(hash2)
# ----------------------------------------------------------------------

# ----------------------------------------------------------------------
