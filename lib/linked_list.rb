class LinkedList
  attr_reader :head, :count
  def initialize
    @head = nil
  end

  def append(data)
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

#prepend method will go here


  def count
    count = 0  #counter starts at 0
      current_node = @head #assigns the current node as head
      until current_node.nil? #checks for @head. Which is assigned to c_n
        count += 1  #adds 1 for each time the block runs
        current_node = current_node.next_node #moves to next node and repeats
      end
    count #Returns total count
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


end