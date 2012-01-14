class Tree
  attr_accessor :children, :node_name, :depth

  def initialize(tree_data, depth=0)
    @depth = depth
    @children = Array.new()

    tree_data.each do |node_name, children|
      @node_name = node_name

      children.each do |child|
        @children.push Tree.new(Hash[*child], depth+1)
      end
    end
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit (&block)
    block.call self
  end
end

initial_hash = {
  'grandpa' => {
    'dad' => {
      'child 1' => {},
      'child 2' => {}
    },
    'uncle' => {
      'child 3' => {},
      'child 4' => {}
    }
  }
}

ruby_tree = Tree.new(initial_hash)

puts "Visiting a node"
ruby_tree.visit {|node| puts   node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all do |node| 
  print "-"*node.depth + " " unless node.depth == 0
  puts node.node_name
end

