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

 it 'can find and return data' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.head.data).to eq("deep")
    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(2, 1)).to eq("shi")
    expect(list.find(1, 3)).to eq("woo shi shu")
 end

  it 'can test if list has certain data' do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.includes?("deep")).to eq(true)
      expect(list.includes?("dep")).to eq(false)
  end

  it 'can use pop to remove last node' do
    list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      
      expect(list.to_string).to eq("deep woo shi shu blop")
      expect(list.pop).to eq("blop")
      expect(list.to_string).to eq("deep woo shi shu")
      expect(list.pop).to eq("shu")
      expect(list.count).to eq(3)
  end


end