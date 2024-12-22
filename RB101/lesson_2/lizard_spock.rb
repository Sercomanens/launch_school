VALID_CHOICES = ['rock', 'paper', 'scissors']

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt_player("You won!")
  elsif win?(computer, player)
    prompt_player("Computer won!")
  else
    prompt_player("It's a tie!")
  end
end

def prompt_player(message)
  puts "=> #{message}"
end

loop do
  prompt_player("Welcome to Rock, Paper, Scissors!")
  prompt_player("Please enter your choice: #{VALID_CHOICES.join(', ')}")
  choice = gets.chomp.downcase

  if VALID_CHOICES.include?(choice)
    computer_choice = VALID_CHOICES.sample
    prompt_player("You chose #{choice} and the computer chose #{computer_choice}")

    display_results(choice, computer_choice)

  else
    prompt_player("That's not a valid choice")
  end

  prompt_player("Do you want to play again? (y/n)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt_player("Thank you for playing. Goodbye!")
