require 'rspec'
require './lib/jungle_beat'
require './lib/linked_list'
require './lib/node'

RSpec.describe JungleBeat do
  it 'exists' do
    jb = JungleBeat.new

    expect(jb).to be_instance_of(JungleBeat)
    expect(jb.list).to be_instance_of(LinkedList)
    expect(jb.list.head).to eq(nil)
  end

  it 'can append multiple items' do
    jb = JungleBeat.new

    expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
    expect(jb.append("woo hoo shu")).to eq("woo hoo shu")
  end


  it 'can count nodes' do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")

    expect(jb.count).to eq(6)
  end







end