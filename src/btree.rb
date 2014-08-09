class BTree
  attr_accessor :root
  def initialize(input= ['abc', 'b e', 'cd ', 'ef ', 'dgh', 'f  ', 'g  ', 'h  '])
    dict = {}
    nodes = input.map do |node|
      data = node.split('')
      new_node = Node.new(data)
      dict.merge!(data[0] => new_node)
      new_node
    end

    dict.merge!( ' '  => nil)
    nodes.each do |node|
      node.left = dict[node.left]
      node.right = dict[node.right]
    end
    self.root = nodes[0]
  end

  def pre_order_traversal
    root.pre_order_traversal
  end
 
  def in_order_traversal
    root.in_order_traversal
  end
end


class Node
  attr_accessor :value, :left, :right
  def initialize(data)
    self.value, self.left, self.right = data[0], data[1], data[2]
  end

  def pre_order_traversal
    value + \
    (left.nil?? '' : left.pre_order_traversal) + \
    (right.nil?? '' : right.pre_order_traversal)
  end

  def in_order_traversal
    (left.nil?? '' : left.in_order_traversal) \
    + value + \
    (right.nil?? '' : right.in_order_traversal)
  end
end