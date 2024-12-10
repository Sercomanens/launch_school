loop do
  puts "Continue? (y/n)"
  gets.chomp.downcase == 'y'
  break unless gets.chomp.downcase == 'y'
end
