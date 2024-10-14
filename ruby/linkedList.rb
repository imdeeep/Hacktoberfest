class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def insert(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next_node while current.next_node
      current.next_node = new_node
    end
  end

  def delete(value)
    return if @head.nil?
    if @head.value == value
      @head = @head.next_node
      return
    end
    current = @head
    while current.next_node
      if current.next_node.value == value
        current.next_node = current.next_node.next_node
        return
      end
      current = current.next_node
    end
  end

  def display
    current = @head
    while current
      print "#{current.value} -> "
      current = current.next_node
    end
    puts "nil"
  end
end

# Usage example
list = LinkedList.new
list.insert(1)
list.insert(2)
list.insert(3)
list.display
list.delete(2)
list.display
list.delete(1)
list.display
list.delete(3)
list.display
