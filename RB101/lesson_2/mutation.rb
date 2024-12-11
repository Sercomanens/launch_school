# Ruby acts like pass by value for immutable objects, pass by reference for mutable objects,
# but is actually pass by value of the reference.


def change(int)
  int[2] = 6
  int
end

a = [1, 2, 3, 4, 5]
p change(a)
p a
p a.object_id
p change(a).object_id

# although integers are immutable, arrays are mutable, and hence the array object_id is the same for both a and change(a)

count = 0
while count < 10
  p "the number is #{count + 1} and it's ID: #{count.object_id}"
  count += 1
end


def increment(x)
  x << 'b'
end
y = 'a'
increment(y)
puts y

def increment(x)
  x << 2
end
y = 5
increment(y)
puts y

def print_id(number)
  puts "Inside method object id = #{number.object_id}"
end
value = 55
puts "Outside method object id = #{value.object_id}"
print_id(value)
