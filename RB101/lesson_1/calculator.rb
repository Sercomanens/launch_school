Kernel.puts("Welcome to the calculator program!")
Kernel.puts("----------------------------------")
Kernel.puts("I need two numbers from you")
Kernel.puts("---------------------------")
Kernel.puts("Type the first number: ")
num1 = Kernel.gets().chomp().to_i()
Kernel.puts("Type the second number: ")
num2 = Kernel.gets().chomp().to_i()
Kernel.puts("Now type the operation you want to perform")
Kernel.puts("1. to add, 2. to subtract, 3. to multiply, 4. to divide")
operation = Kernel.gets().chomp().to_i()

if operation == 1
  Kernel.puts("The result is #{num1 + num2}")
elsif operation == 2
  Kernel.puts("The result is #{num1 - num2}")
elsif operation == 3
  Kernel.puts("The result is #{num1 * num2}")
elsif operation == 4
  Kernel.puts("The result is #{num1.to_f() / num2.to_f()}")
else
  Kernel.puts("Invalid operation")
end
