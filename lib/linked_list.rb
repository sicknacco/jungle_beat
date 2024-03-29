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
      until current_node.next_node.nil? #until c_n.n_n is nil do the following
       current_node = current_node.next_node #c_n is head. 
      end
     current_node.next_node = Node.new(data)
    end
    return data #shows list.append as "doop"
  end

  def prepend(data)
    current_head = @head #gives a start point. @head is nil!!
    @head = Node.new(data) #creates a new head node and assigns as head (with data)
    @head.next_node = current_head #places the c_h value as the new head's next node.
    data
  end      #1. c_h = nil!!!. head is reassigned to the new node that has beep 3. nil is being assigned as beep's next node

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

  def insert(position, data) #expecting an integer and data ex("ploop")
    current_node = @head #assigns head to the current node. Starts at head
    (position -1).times do #shifts nodes -1 times
      current_node = current_node.next_node #Moves to next node
    end
    new_node = Node.new(data) #Creates a new_node object
    new_node.next_node = current_node.next_node # new node's next, will become the current's next
    current_node.next_node = new_node # current's next, will be the new node.
    data
  end 

  def find(position, number)
    array = self.to_string.split(" ") #creates an array from the string and splits contents
    array[position..position + number -1].join(" ") #creates new array from first to last, minus 1 position, then joins back to string 
  end

  def includes?(data)
    self.to_string.include?(data) #makes self to string, then get boolean results
  end

  def pop
    current_node = @head #sets the current node as the head
    while current_node.next_node.next_node #cycle through nodes
      current_node = current_node.next_node #selects last two nodes
    end
      result = current_node.next_node.data #placeholder and selector for data to be removed
      current_node.next_node = nil #sets next node to nil, which removes last node
      result #prints results
  end
end