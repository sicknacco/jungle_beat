require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  it 'exists' do
    list = LinkedList.new

    expect(list).to be_instance_of(LinkedList)
  end

  it 'can append "doop"' do
    list = LinkedList.new
    list.append("doop")

    expect(list.head).to be_instance_of(Node)
    expect(list.head.data).to eq("doop")
  end

  it 'can append "deep"' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.head.data).to eq("doop")
    expect(list.head.next_node.data).to eq("deep")
  end

  it 'keeps count' do
    list = LinkedList.new
    list.append("doop")
    
    expect(list.count).to eq(1)
  end

  it 'list elements to a string' do
    list = LinkedList.new
    list.append("doop")

    expect(list.to_string).to eq("doop")
  end

  it 'can prepend' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    expect(list.head.data).to eq("dop")
    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
  end

 it 'can insert to desired location' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
 
    expect(list.head.next_node.data).to eq("woo")
    expect(list.to_string).to eq("dop woo plop suu")
    expect(list.count).to eq(4)
 end




  


end