
sample_hash = { 'a' => 1, 'b' => 2, 'c' => 3 }
# puts sample_hash['b']

# print "#{sample_hash.keys}"
# puts
# print "#{sample_hash.values}"

my_details = { :name => 'heidless', :favcolor => 'blue'  }
# puts my_details['favcolor']

# my_details.each do |key, value|
#   puts "The class for key is #{key.class} and for value is #{value.class}"
# end

another_hash = { a: 1, b: 2, c: 3 }
# puts another_hash[:a]

myhash = { a: 1, b: 2, c: 3, d: 4 }
myhash[:e] = "Havana"
myhash[:c] = "Ruby"
puts myhash
puts

# myhash.each { |some_key, some_value| puts "The key is #{some_key} and the value is #{some_value}" }

# puts myhash.select { |k, v| v.is_a?(String) }

myhash.each { |k, v| myhash.delete(k) if v.is_a?(String) }
puts myhash
