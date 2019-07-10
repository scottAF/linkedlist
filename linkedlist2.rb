class Node 
  attr_accessor :value, :nextNode

  def initialize(value, nextNode=nil)
    @value = value
    @nextNode = nextNode
  end
end

def print_value(list_node)
  if list_node
    print "#{list_node.value} -->"
    print_value(list_node.nextNode)
  else
    print "nil\n"
    return 
  end
end

def reverse_list(list, last=nil)
    if list
      nextNode = list.nextNode
      list.nextNode = last
      reverse_list(nextNode, list)
    end
end


head = Node.new(1)
node = Node.new(7, head)
node1 = Node.new(38, node)
node2 = Node.new(54, node1)


print_value(node2)

puts "------"

revlist = reverse_list(node2)

print_value(head)