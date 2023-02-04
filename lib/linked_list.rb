class LinkedList
  attr_reader :head, :count
  def initialize
    @head = nil
    @count = 0 #starts count at 0
  end

  def append(data)
    @count += 1 #adding 1 for every append
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node #set as on ln 9, now head
    end
    return data #shows list.append as "doop"
  end

  def to_string
    string = "" #empty placeholder
    current_node = @head #current_node is the head
    until current_node.nil? #Until this is true, do the following 
      string << "#{current_node.data} " #shoves current node's data into string
      current_node = current_node.next_node #makes current_node to head. Then goes to next node
    end
    string.strip #Removes last space so 'until' is nill? (CONFIRM THIS!!)
  end



end