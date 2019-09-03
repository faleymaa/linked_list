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

	def pop
		# take a dish off the stack
		to_be_popped = @data
		@data = to_be_popped.next_node #like 23
		to_be_popped.next_node = nil
	end

	def reverse_list(node, previous=nil)
  		if node
  			next_node = node.next_node
  			node.next_node = previous
  			reverse_list(next_node, node)
  		end
	end

	def output
		print_stack(@data)
		puts "=== end of stack ==="
	end

	def print_stack(node)
		if node
			print "#{node.value} -->"
			print_stack (node.next_node)
		else
			print "nil/n"
			return
		end
	end

	def infinite_loop?(node)
  		tortoise = node.next_node
  		hare = node.next_node

  		until hare.nil?
    		hare = hare.next_node
    		return false if hare.nil?

		    hare = hare.next_node
		    tortoise = tortoise.next_node
		    return true if hare == tortoise
  		end

  		return false
	end

end

megan_stack = Stack.new
megan_stack.push(82)
megan_stack.push(23)
megan_stack.push(7)
megan_stack.reverse_list(megan_stack.output)
megan_stack.pop
megan_stack.output

puts infinite_loop?
node.next_node = node3
puts infinite_loop?(node3)


