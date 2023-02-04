require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  it 'exists' do
    list = LinkedList.new

    expect(list).to be_instance_of(LinkedList)
  end

  it 'can append' do
    list = LinkedList.new
    list.append("doop")

    expect(list.head).to be_instance_of(Node)
  end

  it 'keeps count' do
    list = LinkedList.new
    list.append("doop")
#require 'pry'; binding.pry
    expect(list.count).to eq(1)
  end

  xit 'list elements to a string' do
    list = LinkedList.new
    list.append("doop")

    expect(list.to_string).to eq("doop")
  end


end