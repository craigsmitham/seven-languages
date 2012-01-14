load 'assignment.rb'

assignment "Print the contents of an array of sixteen numbers, "+ 
           "four numbers at a team, using just each." do
  number_per_line = 4
  array = (1..16).to_a
  array.each_with_index do |number, index|
    puts if index != 0 && index % number_per_line == 0
    print "#{number} " 
  end
end

assignment "Now, do the same with each_slice in Enumberable." do
  number_per_line = 4
  array = (1..16).to_a
  array.each_slice(number_per_line) { |line| print line; puts; }
end


