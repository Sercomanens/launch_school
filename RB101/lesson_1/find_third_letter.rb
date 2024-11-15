# Pseudo Code
# start the program
# set counter to 0
# read string of characters
# set letter to look out for
# itterate through the string of characters
# if the current character is equal to the letter
# increment the counter
# when the counter = 3
# return the index of the 3rd character found
# print index
# if 3 occurences of the letter are not found
# return nil
# end the program

def find_third_letter(string, letter)
  counter = 0

  string.each_char.with_index do |char, index|
    if char == letter
      counter += 1
      if counter == 3
        return index
      end
    end
  end
  return nil
end

puts find_third_letter('axbxcdxex', 'x')





# string = 'axbxcdxex'
# letter = 'x'
# counter = 0

# string.each_char.with_index do |char, index|
#   if char == letter
#     counter += 1
#     if counter == 3
#       puts index
#       break
#     end
#   end
# end



# string = 'axbxcdxex'
# letter = 'x'
# counter = 0

# string.each_char.with_index do |char, index|
#   if char == letter && counter == 2
#     puts index
#     break
#   elsif char == letter
#     counter += 1
#   end
# end
