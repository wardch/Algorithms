# Challenge 1: Create a method BST which makes a Binary Search Tree.
# Challenge 2: Is Value in Binary Search Tree?
# Write the function is_value_present? that takes the root node of a binary search tree and an integer as arguments and returns true or false if the integer is in the tree.

# Challenge 1

# class Node
#   attr_accessor :value, :left_child, :right_child

#   def initialize(value)
#     @value = value
#     @left_child = nil
#     @right_child = nil
#   end

# end

# def genereate_BST(size)
#   nums = (1..size).to_a.shuffle
#   root = Node.new(nums.shift)
#   nums.each do |num|
#     add_new_node(root, Node.new(num))
#   end
#   return root
# end

# def add_new_node(root, node)
#   if node.value < root.value
#     if root.left_child == nil
#       root.left_child = node
#       return
#     else
#       add_new_node(root.left_child, node)
#     end
#   elsif node.value > root.value
#     if root.right_child == nil
#       root.right_child = node
#       return
#     else
#       add_new_node(root.right_child, node)
#     end
#   end
#     return node
# end

# p genereate_BST(10)

# Challenge 2

class Node
  attr_accessor :left_child, :right_child, :value

  def initialize(value)
    @value = value
    @left_child = nil
    @right_child = nil
  end
end

root = Node.new(5)
root.left_child = Node.new(3)
root.right_child = Node.new(7)
root.left_child.right_child = Node.new(4)
root.left_child.left_child= Node.new(1)
root.right_child.right_child = Node.new(10)
root.right_child.left_child = Node.new(6)

def is_this_value_fo_real?(root_node, value)
  return false if root_node == nil
  return true if root_node.value == value

  if root_node.value > value
    is_this_value_fo_real?(root_node.left_child, value)
  elsif
    root_node.value < value
    is_this_value_fo_real?(root_node.right_child, value)
  end
end

p is_this_value_fo_real?(root, 111) == false
p is_this_value_fo_real?(root, 3) == true
p is_this_value_fo_real?(root, 1311) == false
p is_this_value_fo_real?(root, 1) == true
