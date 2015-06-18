=begin
Create a Dictionary Tree
Create a dictionary class that has the following methods:

add_word(word)
does_word_exist?(word)
=end

class DictonaryTree
  attr_accessor :root

  def initialize()
    @root = Node.new("")
  end

  def add_word(word, root=@root)
    first_letter = word[0]
    first_letter_index = letter_index(first_letter)

    if first_letter_index == 0
      return root.children[0] = true
    elsif root.children[first_letter_index]
      add_word(word[1..-1], root.children[first_letter_index])
    else
      root.children[first_letter_index] = Node.new(first_letter)
      add_word(word[1..-1], root.children[first_letter_index])
    end
  end

  def does_word_exist?(word, root=@root)
    first_letter = word[0]
    first_letter_index = letter_index(first_letter)

    if first_letter_index == 0
      return true
    elsif root.children[first_letter_index]
      does_word_exist?(word[1..-1], root.children[first_letter_index])
    else
      return false
    end
  end

  private

  def letter_index(letter)
    return 0 if letter == nil
    letter_index = letter.downcase.ord - 96
  end
end

class Node
  attr_accessor :value, :children
  def initialize(value)
    @value = value
    @children = Array.new(27, nil)
  end
end

oxford = DictonaryTree.new()
p oxford.add_word("Charlie") == true
p oxford.does_word_exist?("Charlie") == true
p oxford.does_word_exist?("charlie") == true
p oxford.does_word_exist?("Cromulant") == false
p oxford.does_word_exist?("Embiggan") == false

