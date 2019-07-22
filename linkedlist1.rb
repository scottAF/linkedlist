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


class Stack
  attr_accessor :data

  def intialize
    @data = nil    
  end

  def push(value)
    @data = Node.new(value, @data)
  end

  def pop
    return print "nil\n" if @data.nil
    print "#{@data.value}"
    @data = @data.nextNode
  end
end


  def reverse_list(list)
    stack = Stack.new
    while list 
      stack.push(list.value)
      list = list.nextNode
    end
    return stack.data

  end


head = Node.new(1)
node = Node.new(2, head)
node1 = Node.new(4, node)
node2 = Node.new(15, node1)
node3 = Node.new(40, node2)


print_value(node3)

puts "------"

revlist = reverse_list(node3)

print_value(revlist)

revlist = reverse_list(revlist)

puts "------"

print_value(revlist)
