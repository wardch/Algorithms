require 'pp'

class Node
  attr_accessor :neighbours, :visited
  attr_reader :value

  def initialize(value)
    @value = value
    @neighbours = []
    @visited = false
  end
end

def create_graph(num_nodes)
  nodes = []
  values = (1..num_nodes).to_a.shuffle
  num_nodes.times do
    nodes << Node.new(values.shift)
  end
  nodes.each do |node|
    until node.neighbours.length >= 2
      neighbour = nodes.shift
      if node != neighbour && !node.neighbours.include?(neighbour)
        node.neighbours << neighbour
        neighbour.neighbours << node
      end
    end
  end
  return nodes[0]
end

root1 = create_graph(10)


def return_values_breadth_first(root)
  nodes = [root]
  values = []
  until nodes.empty?
    current = nodes.shift
    if !current.visited
      values << current.value
      current.visited = true
      current.neighbours.each do |neighbour_node|
        nodes << neighbour_node if !neighbour_node.visited
      end
    end
  end
  return values
end



