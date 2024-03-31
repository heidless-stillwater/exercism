
### [Locomotive Engineer](https://exercism.org/tracks/ruby/exercises/locomotive-engineer)

a, b = 1, 2
puts a

x, y, z = 1, "Hello", true
puts x
puts y
puts z 

puts

# swap
numbers = [1, 2]
numbers.map { |n| print  "#{n}, " }
numbers[0], numbers[1] = numbers[1], numbers[0]
numbers.map { |n| print  "#{n}, " }
puts 

puts 

# Decomposition
fruits = ["apple", "banana", "cherry"]
# puts fruits
_, _, z = fruits
puts z

puts "++++++++++++++++++++++++++++"

# Deep Decomposing
fruits_vegetables = [["apple", "banana"], ["carrot", "potato"]]
(a, b), (c, d) = fruits_vegetables
puts a
#=> "apple"
puts d
#=> "potato"

puts "============================="

fruits_vegetables = [["apple", "banana"], ["carrot", "potato"]]
a, (c, d) = fruits_vegetables
puts a
#=> ["apple", "banana"]
puts
puts c
#=> "carrot"

# splat
fruits = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]
x, *last = fruits
x
=> "apple"
>> last
#=> ["banana", "cherry", "orange", "kiwi", "melon", "mango"]

>> fruits = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]
>> x, *middle, y, z = fruits
>> y
=> "melon"
>> middle
=> ["banana", "cherry", "orange", "kiwi"]

>> fruits_vegetables = [["apple", "banana", "melon"], ["carrot", "potato", "tomato"]]
>> (a, *rest), b = fruits_vegetables
>> a
=> "apple"
>> rest
=> ["banana", "melon"]

# Decomposing a Hash
>> fruits_inventory = {apple: 6, banana: 2, cherry: 3}
>> fruits_inventory.to_a
=> [[:apple, 6], [:banana, 2], [:cherry, 3]]
>> x, y, z = fruits_inventory.to_a
>> x
=> [:apple, 6]

## keys
>> fruits_inventory = {apple: 6, banana: 2, cherry: 3}
>> x, y, z = fruits_inventory.keys
>> x
=> :apple

## values
>> fruits_inventory = {apple: 6, banana: 2, cherry: 3}
>> x, y, z = fruits_inventory.values
>> x
=> 6

# Composition

## Composition an array with splat operator(*)
>> fruits = ["apple", "banana", "cherry"]
>> more_fruits = ["orange", "kiwi", "melon", "mango"]

# fruits and more_fruits are unpacked and then their elements are packed into combined_fruits
>> combined_fruits = *fruits, *more_fruits

>> combined_fruits
=> ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]

## Composition a hash with double splat operator(**)
>> fruits_inventory = {apple: 6, banana: 2, cherry: 3}
>> more_fruits_inventory = {orange: 4, kiwi: 1, melon: 2, mango: 3}

# fruits_inventory and more_fruits_inventory are unpacked into key-values pairs and combined.
>> combined_fruits_inventory = {**fruits_inventory, **more_fruits_inventory}

# then the pairs are packed into combined_fruits_inventory
>> combined_fruits_inventory
=> {:apple=>6, :banana=>2, :cherry=>3, :orange=>4, :kiwi=>1, :melon=>2, :mango=>3}


# Usage of splat operator(*) and double splat operator(**) with methods
## Composition with method parameters

### Usage of *arguments:
# This method is defined to take any number of positional arguments
# (Using the single line form of the definition of a method.)

>> def my_method(*arguments)= arguments

# Arguments given to the method are packed into an array
>> my_method(1, 2, 3)
=> [1, 2, 3]

>> my_method("Hello")
=> ["Hello"]

>> my_method(1, 2, 3, "Hello", "Mars")
=> [1, 2, 3, "Hello", "Mars"]
  
## Usage of **keyword_arguments:
# This method is defined to take any number of keyword arguments

>> def my_method(**keyword_arguments)= keyword_arguments

# Arguments given to the method are packed into a dictionary

>> my_method(a: 1, b: 2, c: 3)
=> {:a => 1, :b => 2, :c => 3}

>> def my_method(a)= a

###

>> my_method(a: 1, b: 2, c: 3)
=> {:a => 1, :b => 2, :c => 3}

def my_method(*arguments, **keyword_arguments)
  p arguments.sum
  for (key, value) in keyword_arguments.to_a
    p key.to_s + " = " + value.to_s
  end
end
my_method(1, 2, 3, a: 1, b: 2, c: 3)
6
"a = 1"
"b = 2"
"c = 3"

# Arguments have to be structured in a specific order:

# def my_method(<positional_arguments>, *arguments, <positional_arguments>, <keyword_arguments>, **keyword_arguments)

# If you don't follow this order then you will get an error.

def my_method(a, b, *arguments)
  p a
  p b
  p arguments
end
my_method(1, 2, 3, 4, 5)
1
2
[3, 4, 5]

>> def my_method(a, *middle, b)= middle
>> my_method(1, 2, 3, 4, 5)
=> [2, 3, 4]

>> def my_method(first, *many, last, a:, **keyword_arguments)
     p first
     p many
     p last
     p a
     p keyword_arguments
     end
>> my_method(1, 2, 3, 4, 5, a: 6, b: 7, c: 8)
1
[2, 3, 4]
5
6
{:b => 7, :c => 8}

# Decomposing into method calls
## You can use splat operator (*) to unpack an array of arguments into a method call:
def my_method(a, b, c)
  p c
  p b
  p a
end
numbers = [1, 2, 3]
my_method(*numbers)
3
2
1

def my_method(a:, b:, c:)
  p c
  p b
  p a
end
numbers = {a: 1, b: 2, c: 3}
my_method(**numbers)
3
2
1


