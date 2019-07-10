class Node 
  attr_accessor :value, :next

  def initialize(value, nextNode)
    @value = value
    @next = nextNode
  end
end

# helps = Node.new(3, nil)
node = Node.new(2, nil)
head = Node.new(1, node)

puts node.next
puts node.value