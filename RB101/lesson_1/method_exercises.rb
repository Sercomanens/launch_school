# Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

def greeting(name)
  "Hello, #{name}!"
end

puts greeting("John")


#Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply(a, b)
  a * b
end

puts multiply(3, 4)


def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
