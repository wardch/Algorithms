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


