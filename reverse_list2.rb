class LinkedListNode
	attr_accessor :value
	attr_accessor :nextnode
    
    def initialize(value, nextnode)
    	@value = value
    	@nextnode = nextnode
    end
     	
end

LL = LinkedListNode.new('Vincent', LinkedListNode.new('Charity', LinkedListNode.new('Bryan', LinkedListNode.new('Job', nil))))

def printLL(list)
	while list != nil
    	puts list.value
    	list = list.nextnode
	end	
end


def mutation_reverse(list)
   newlist = nil
  while list != nil
  	 second = list.nextnode
  	 list.nextnode = newlist	
    newlist = list 
    list = second
  end
  return newlist
end

printLL LL
puts 
printLL mutation_reverse LL