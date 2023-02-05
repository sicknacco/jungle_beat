class LinkedList
  attr_reader :head, :count
  def initialize
    @head = nil
    @count = 0 #starts count at 0
  end

  def append(data)
    @count += 1 #adding 1 for every append
    if @head.nil? #if the head is nill, do the following
       @head = Node.new(data) #@head is a new node
    else
      current_node = @head #assigns current_node as head
      until current_node.next_node.nil? #until c_n.n_n is false
        current_node = current_node.next_node #c_n is head. 
      end
      current_node.next_node = Node.new(data)
    end
    return data #shows list.append as "doop"
  end


  def to_string
    current_node = @head #current_node is the head
    string = " " #empty placeholder for below
    until current_node.nil? #Until this is true, do the following :
      string << "#{current_node.data} " #shoves current node's data into string
      current_node = current_node.next_node #makes current_node to head. Then goes to next node
    end
    string.strip #Removes empty spaces from string
  end


#### Currently on list.head.next_node
### Output Desired => <Node data="deep" next_node=nil #5678904567890>
### Currently get nil
end