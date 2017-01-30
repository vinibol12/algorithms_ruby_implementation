require 'pry'
module LinkedLists
  class Node
    attr_accessor :value
    attr_accessor :next_node
    def initialize value, next_node
      @value = value
      @next_value = next_node
    end
  end

  class Stack
    attr_accessor :first

    def initialize
      @first = nil
    end

    def push(value)
      @first = Node.new(value, @first)
    end

    def pop
      raise 'Stack is empty' if is_empty?
      value = @first.value
      @first = @first.next_node
      value
    end

    def is_empty?
      @first == nil
    end
  end
end

