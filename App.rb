min = 1
max = 1000
guess = (min + max) / 2
tries = 0
user_answer = ''

puts "Welcome! What is your name?"
name = gets.chomp

puts "Hello, #{name}! Think of a number between 1 and 1000."

while user_answer != "y" do
  puts "Is your number #{guess}? (y)es, (h)igher, or (l)ower."

  user_answer = gets.chomp

  if user_answer == "h"
    min = guess + 1
    guess = (min + max) / 2
    tries += 1
  elsif user_answer == "l"
    max = guess - 1
    guess = (min + max) / 2
    tries += 1
  elsif user_answer == "y"
    puts "I got the answer in #{tries} tries!"
    sleep 10
    system("clear")
    system("ruby App.rb")
  end
end
