puts "\n"+'Print the string "Hello, world":'
puts "Hello World"

puts "\n"+'For the string "Hello, Ruby," find the index of the word "Ruby":'
"Hello, Ruby".index("Ruby")

puts "\nPrint your name ten times:"
puts 'What is your name?'
name = gets
10.times do
  puts name
end

puts "\n"+'Pring the string "This sentence number 1," where the number 1 changes from 1 to 10'
x = 1
until x > 10
  puts "This sentence number #{x}"
  x = x + 1
end

puts "\nRun a Ruby program from a file:"
puts "done"

puts "\nBONUS: Write a program that picks a number and allow the player to guess"
rand = rand(100)
guess = nil
num_guesses = 0
until guess == rand
  print "Enter your guess: "
  guess = gets.to_i
  num_guesses += 1
  if guess == rand
    puts "***************"
    puts "CONGRATULATIONS"
    puts "***************"
    puts "\nYou guessed in #{num_guesses} guesses"
  elsif guess < rand
    puts "\n guess HIGHER"
  elsif guess > rand
    puts "\n guess LOWER"
  end
end
