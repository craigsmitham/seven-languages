def assignment title, &block
  puts "\n\n--"
  puts title
  puts
  block.call
end
# QUESTION: How would I call the assignment method using brackets {} for the code block?

alias :bonus :assignment
