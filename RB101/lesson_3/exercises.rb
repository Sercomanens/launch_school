dog != cat

if !user_name
  puts "No user name"
end

advice = "Few things in life are as important as house training your pet dinosaur."
advice = advice.gsub("important", "urgent")

advice = "Few things in life are as important as house training your pet dinosaur."
words = advice.split(" ")
modified_words = []
for word in words
  if word == "important"
    modified_words << "urgent"
  else
    modified_words << word
  end
end

new_advice = modified_words.join(" ")
puts new_advice


range = 10..100
count = range.count do |num|
  num == 42
end
