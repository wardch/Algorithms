class Node
  attr_accessor :next
  attr_reader :value

  def initialize(value, next_node = nil)
    @value = value
    @next = next_node
  end

end

class LinkedList

  attr_accessor :head

  def initialize(head)
    @head = head
  end

  def add_new_head(value)
    current = @head
    node = Node.new(value)
    node.next = current
    @head = node
  end

  def add_new_tail
  end

  def insert_at_index(value, position)
  end

  def remove_at_index(value, position)
  end

end


root = Node.new(10)
ll = LinkedList.new(root)
ll.add_new_head(5)
p ll.add_new_head(7)
puts "$"*30
ll.add_new_tail



