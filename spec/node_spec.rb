require 'rspec'
require './lib/node'

RSpec.describe Node do
  it 'exists' do
    node = Node.new("plop", nil)

    expect(node).to be_instance_of(Node)
    expect(node.next_node).to eq(nil)
  end
end

### comment