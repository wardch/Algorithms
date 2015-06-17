class Node
  attr_accessor :value, :next_node

  def initialize (val, next_in_line = nil)
    @value = val
    @next_node = next_in_line
    puts "Initialized a node with the value of " + value.to_s
  end

end

class List
  def initialize(val)
    @head = Node.new(val, nil)
  end

end

p ll = List.new("jesus")




# class List
#   def initialize
#     @head = nil
#     @tail = nil
#   end

#   def

# end

# def second_to_last(integer, head)
# end




