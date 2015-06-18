class Tree
  attr_accessor :root

  def initialize
    @root = nil
  end
end


class Node
  attr_accessor :left_child, :right_child, :value

  def initialize(value=nil)
    @value = value
    @left_child = nil
    @right_child = nil
  end
end

$morse_code_tree = Tree.new()
$morse_code_tree.root = Node.new("")
$morse_code_tree.root.left_child = Node.new("e")
$morse_code_tree.root.right_child = Node.new("t")
$morse_code_tree.root.left_child.left_child = Node.new("i")
$morse_code_tree.root.left_child.right_child = Node.new("a")
$morse_code_tree.root.right_child.left_child = Node.new("n")
$morse_code_tree.root.right_child.right_child = Node.new("m")
$morse_code_tree.root.left_child.left_child.left_child = Node.new("s")
$morse_code_tree.root.left_child.left_child.right_child = Node.new("u")
$morse_code_tree.root.left_child.right_child.left_child = Node.new("r")
$morse_code_tree.root.left_child.right_child.right_child = Node.new("w")
$morse_code_tree.root.right_child.left_child.left_child = Node.new("d")
$morse_code_tree.root.right_child.left_child.right_child = Node.new("k")
$morse_code_tree.root.right_child.right_child.left_child = Node.new("g")
$morse_code_tree.root.right_child.right_child.right_child = Node.new("o")
$morse_code_tree.root.left_child.left_child.left_child.left_child = Node.new("h")
$morse_code_tree.root.left_child.left_child.left_child.right_child = Node.new("v")
$morse_code_tree.root.left_child.left_child.right_child.left_child = Node.new("f")
$morse_code_tree.root.left_child.right_child.left_child.left_child = Node.new("l")
$morse_code_tree.root.left_child.right_child.right_child.left_child = Node.new("p")
$morse_code_tree.root.left_child.right_child.right_child.right_child = Node.new("j")
$morse_code_tree.root.right_child.left_child.left_child.left_child = Node.new("b")
$morse_code_tree.root.right_child.left_child.left_child.right_child = Node.new("x")
$morse_code_tree.root.right_child.left_child.right_child.left_child = Node.new("c")
$morse_code_tree.root.right_child.left_child.right_child.right_child = Node.new("y")
$morse_code_tree.root.right_child.right_child.left_child.left_child = Node.new("z")
$morse_code_tree.root.right_child.right_child.left_child.right_child = Node.new("q")


def translate_morse_code_message(morse_message)
  message = ''
  morse_message.each do |morse_letter|
    if morse_letter == ' '
      message << ' '
    else
      message << translate_morse_code_letter(morse_letter)
    end
  end
  message
end

def translate_morse_code_letter(morse_letter)
  current = $morse_code_tree.root
  morse_letter.each_char do |dot_dash|
    if dot_dash == '.'
      current = current.left_child
    else
      current = current.right_child
    end
  end
  current.value
end

p translate_morse_code_message(["....",".",".-..",".-..","---"]) == 'hello'




