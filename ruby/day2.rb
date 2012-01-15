require './assignment.rb'

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

assignment "Create a cleaner implmentation for the Tree class that "+
  "allows for initialization with nested structure of hashes" do

  require './better_tree.rb'

end

assignment "Create a simple grep that will print the lines of a file having "+
  "any occurance of a phrase in that line" do
  
  def grep(phrase, file)
    puts "Searching for \"#{phrase}\" in the file \"#{file}\"...\n\n"
    
    File.open(file, File::RDONLY) do |f|
      line_number = 0
      while line = f.gets
        if /#{phrase}/.match line
          puts "#{line_number}: #{line}"
        end
        line_number += 1
      end
      
    end 
  end

  grep("assignment", "day2.rb")
end
