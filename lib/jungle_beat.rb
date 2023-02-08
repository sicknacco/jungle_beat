class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    array = data.split(" ")
    array.each do |sound|
      list.append(sound)
    end
    data
  end

  def count
    list.count
  end










end