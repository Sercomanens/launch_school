require 'pry'
require 'pry-byebug'

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def operation_to_message(op)
  {
    '1' => "Adding",
    '2' => "Subtracting",
    '3' => "Multiplying",
    '4' => "Dividing"
  }[op]
end

prompt("Welcome to the calculator program! Please enter your name:")
name = nil
loop do
  name = Kernel.gets.chomp

  if name.empty?
    prompt("Make sure to use a valid name")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do
  Kernel.puts("----------------------------------")
  prompt("I need two numbers from you")
  Kernel.puts("---------------------------")
  num1 = nil
  loop do
    prompt("Type the first number: ")
    num1 = Kernel.gets.chomp

    if valid_number?(num1)
      break
    else
      prompt("Invalid number. Please try again")
    end
  end

  #binding.pry

  prompt("Type the second number: ")
  num2 = nil
  loop do
    num2 = Kernel.gets.chomp

    if valid_number?(num2)
      break
    else
      prompt("Invalid number. Please try again")
    end
  end

  prompt("Now type the operation you want to perform")
  operator_prompts = <<-MSG
  What operation would you like to perform?
  1. to add
  2. to subtract
  3. to multiply
  4. to divide
  MSG

  prompt(operator_prompts)

  operation = nil
  loop do
    operation = Kernel.gets.chomp
    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt("Invalid operation. Please choose: 1,2,3 or 4 only...")
    end
  end

  prompt("#{operation_to_message(operation)} the two numbers...")

  case operation
  when '1'
    prompt("The result is #{num1.to_i + num2.to_i}")
  when '2'
    prompt("The result is #{num1.to_i - num2.to_i}")
  when '3'
    prompt("The result is #{num1.to_i * num2.to_i}")
  when '4'
    prompt("The result is #{num1.to_f / num2.to_f}")
  else
    "Invalid operation"
  end

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator. Goodbye!")


# def prompt(message)
#   Kernel.puts("=> #{message}")
# end

# prompt("Welcome to the calculator program!")
# Kernel.puts("----------------------------------")
# prompt("I need two numbers from you")
# Kernel.puts("---------------------------")
# prompt("Type the first number: ")
# num1 = Kernel.gets().chomp().to_i()
# prompt("Type the second number: ")
# num2 = Kernel.gets().chomp().to_i()
# prompt("Now type the operation you want to perform")
# prompt("1. to add, 2. to subtract, 3. to multiply, 4. to divide")
# operation = Kernel.gets().chomp().to_i()

# result = case operation
# when 1
#   prompt("The result is #{num1 + num2}")
# when 2
#   prompt("The result is #{num1 - num2}")
# when 3
#   prompt("The result is #{num1 * num2}")
# when 4
#   prompt("The result is #{num1.to_f() / num2.to_f()}")
# else
#   "Invalid operation"
# end



# if operation == 1
#   prompt("The result is #{num1 + num2}")
# elsif operation == 2
#   prompt("The result is #{num1 - num2}")
# elsif operation == 3
#   prompt("The result is #{num1 * num2}")
# elsif operation == 4
#   prompt("The result is #{num1.to_f() / num2.to_f()}")
# else
#   prompt("Invalid operation")
# end






# Kernel.puts("Welcome to the calculator program!")
# Kernel.puts("----------------------------------")
# Kernel.puts("I need two numbers from you")
# Kernel.puts("---------------------------")
# Kernel.puts("Type the first number: ")
# num1 = Kernel.gets().chomp().to_i()
# Kernel.puts("Type the second number: ")
# num2 = Kernel.gets().chomp().to_i()
# Kernel.puts("Now type the operation you want to perform")
# Kernel.puts("1. to add, 2. to subtract, 3. to multiply, 4. to divide")
# operation = Kernel.gets().chomp().to_i()

# if operation == 1
#   Kernel.puts("The result is #{num1 + num2}")
# elsif operation == 2
#   Kernel.puts("The result is #{num1 - num2}")
# elsif operation == 3
#   Kernel.puts("The result is #{num1 * num2}")
# elsif operation == 4
#   Kernel.puts("The result is #{num1.to_f() / num2.to_f()}")
# else
#   Kernel.puts("Invalid operation")
# end
