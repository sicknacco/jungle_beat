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

    expect(list.head).to be_instance_of(Node)
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


end