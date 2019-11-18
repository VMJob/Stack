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

def reverseLL(list)
	stack = []
	while list != nil
        stack.push list.value
    	list = list.nextnode
	end	
	
	newlist = LinkedListNode.new(stack.pop, nil)
	endnode = newlist
	while stack.length != 0
        newnode = LinkedListNode.new(stack.pop, nil)
        endnode.nextnode = newnode
        endnode = newnode
	end	
	return newlist	
end
printLL LL
printLL reverseLL LL 