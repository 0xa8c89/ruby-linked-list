class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    return self.head = Node.new(value) if @head.nil?

    curr = head
    curr = curr.next_node until curr.next_node.nil?
    curr.next_node = Node.new(value)
  end

  def prepend(value)
    self.head = Node.new(value, head)
  end

  def size
    return 0 if head.nil?

    curr = head
    count = 1
    until curr.next_node.nil?
      count += 1
      curr = curr.next_node
    end
    count
  end

  def tail
    return nil if head.nil?

    curr = head
    curr = curr.next_node until curr.next_node.nil?
    curr
  end

end

class Node
  attr_reader :value
  attr_accessor :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

linked_list = LinkedList.new
linked_list.append(10)
linked_list.append(20)
linked_list.append(30)
p linked_list

linked_list.prepend(5)
p linked_list

p linked_list.size

puts linked_list.head

p linked_list.tail
puts linked_list.tail