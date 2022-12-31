class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    return self.head = Node.new(value) if head.nil?

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

  def at(index)
    count = 0
    curr = head
    until curr.nil?
      return curr if count.equal?(index)

      count += 1
      curr = curr.next_node
    end
    nil
  end

  def pop
    curr = head
    curr = curr.next_node until curr.next_node.next_node.nil?
    curr.next_node = nil
  end

  def contains?(value)
    curr = head

    loop do
      return true if curr.value == value
      break if curr.next_node.nil?

      curr = curr.next_node
    end
    false
  end

  def find(value)
    curr = head
    count = 0

    loop do
      return count if curr.value == value
      break if curr.next_node.nil?

      curr = curr.next_node
      count += 1
    end
    nil
  end

  def to_s
    return 'nil' if head.nil?

    curr = head
    r_string = ''
    loop do
      r_string << "#{curr.value} -> "
      if curr.next_node.nil?
        r_string << 'nil'
        break
      end
      curr = curr.next_node
    end
    r_string
  end

  def insert_at(value, index)
  end

  def remove_at(index)
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

# linked_list = LinkedList.new
# linked_list.append(10)
# linked_list.append(20)
# linked_list.append(30)
# p linked_list

# linked_list.prepend(5)
# p linked_list

# p linked_list.size

# puts linked_list.head

# p linked_list.tail
# puts linked_list.tail
# p linked_list
# p linked_list.size
# puts linked_list.at(0)

# linked_list.pop
# p linked_list
# p linked_list.contains?(30)
# p linked_list.find(50)
# p linked_list.to_s

# puts linked_list
# linked_list.remove_at(2)
# puts linked_list
