load 'assignment.rb' 

assignment 'Print the string "Hello, world"' do
  puts "Hello World"
end

assignment 'For the string "Hello, Ruby," find the index of the word "Ruby"' do
  "Hello, Ruby".index("Ruby")
end

assignment 'Print your name ten times' do
  puts 'What is your name?'
  name = gets
  10.times { puts name }
end

assignment 'Pring the string "This sentence number 1," where the number 1 changes from 1 to 10' do
  x = 1
  until x > 10
    puts "This sentence number #{x}"
    x = x + 1
  end
end

assignment 'Run a Ruby program from a file' do 
  puts "winning"
end

bonus "Write a program that picks a number and allow the player to guess" do
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
end

