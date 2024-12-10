def prompt(message)
  Kernel.puts("::> #{message}")
end

def calculate_monthly_payment(loan_amount, monthly_rate, loan_duration)
  loan_amount * (monthly_rate / (1 - ((1 + monthly_rate)**(-loan_duration))))
end

prompt("Welcome to the car loan calculator program!")
Kernel.puts("-------------------------------------------")

prompt("What is the loan amount you need?")
loan_amount = Kernel.gets().chomp().to_f()

prompt("Select repayment duration, Select: A B C D or E")
duration_prompt = <<-MSG
A: 1-12 months: 23% APR)
B: 13-24 months: 21% APR
C: 25-36 months: 19% APR
D: 37-48 months: 17% APR
E: 49-60 months: 15% APR
MSG
Kernel.puts(duration_prompt)
duration_choice = Kernel.gets().chomp().upcase()

loan_details =  case duration_choice
                when 'A'
                  [12, 0.23]
                when 'B'
                  [24, 0.21]
                when 'C'
                  [36, 0.19]
                when 'D'
                  [48, 0.17]
                when 'E'
                  [60, 0.15]
                else
                  [0, 0]
                end

loan_duration = loan_details[0]
annual_rate = loan_details[1]
monthly_rate = annual_rate / 12

monthly_payment = calculate_monthly_payment(loan_amount, monthly_rate, loan_duration)
total_payment = monthly_payment * loan_duration
total_interest = total_payment - loan_amount

prompt("Monthly Payment: $#{format('%.2f', monthly_payment)}")
prompt("Total Payment: $#{format('%.2f', total_payment)}")
prompt("Total Interest: $#{format('%.2f', total_interest)}")
