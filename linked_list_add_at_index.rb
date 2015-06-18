require 'pp'

class Node
  attr_accessor :value, :pointer

  def initialize(value=nil, pointer=nil)
    @value = value
    @pointer = pointer
  end

end


class List

  def initialize(head=nil)
    @head = head
  end

  def add_at_index(node, index)
    @temp_head = @head
    counter = 0
    until counter == index - 1
      @temp_head = @temp_head.pointer
      counter += 1
    end
    node.pointer = @temp_head.pointer
    @temp_head.pointer = node
  end

  def remove_at_index(index)
    @temp_head = @head
    counter = 0
    until counter == index - 1
      @temp_head = @temp_head.pointer
      counter += 1
    end
    remove_node = @temp_head.pointer
    @temp_head.pointer = @temp_head.pointer.pointer
    remove_node
  end

  def display
    temp_head = @head
    until temp_head == nil
      print "#{temp_head.value} ~> "
      temp_head = temp_head.pointer
    end
    print "\n"
  end

end

a = Node.new("10")
b = Node.new("20")
c = Node.new("30")
d = Node.new("40")
e = Node.new("5")


a.pointer = b
b.pointer = c

ll = List.new(a)
ll.add_at_index(d, 3)
ll.add_at_index(e, 4)

ll.display


