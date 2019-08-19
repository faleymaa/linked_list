class LinkedListNode
  attr_accessor :value, :next_node #linklistnode.value => 82

  def initialize(value, next_node=nil) #value = 82
    @value = value #82
    @next_node = next_node
  end
end

class Stack
	attr_accessor :data

	def initialize
		@data = nil
	end

	def push(value) #82
		# put a dish on top of the stack
		# 82 => 49 => 12 
		@data = LinkedListNode.new(value, @data)
	end

	def reverse_list(list)
  		stack = Stack.new
  		while list
    		stack.push(list.value)
    		list = list.next_node
  		end
		return stack.data
	end

	def pop
		# take a dish off the stack
		to_be_popped = @data
		@data = to_be_popped.next_node #like 23
		to_be_popped.next_node = nil
	end

	def output
		print_stack(@data)
		puts "=== end of stack ==="
	end

	def print_stack(node)
		puts node.value
		if node.next_node != nil
			print_stack(node.next_node) #recurrsion!
		end
	end

end

megan_stack = Stack.new
megan_stack.push(82)
megan_stack.push(23)
megan_stack.push(7)
megan_stack.output
megan_stack.pop
megan_stack.output
revlist = reverse_list(megan_stack)
print_stack(revlist)
