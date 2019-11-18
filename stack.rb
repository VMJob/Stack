class Stack
  attr_accessor :data

  def initialize 
   @data = []
  end

  def push(item)
    @data.push item
  end

  def pop
    @data.pop 
  end

end