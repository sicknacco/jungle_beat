class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
    @rate = 300
    @voice = "Boing"
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

  def play
    `say -r #{@rate} -v #{@voice} #{@list.to_string}`
  end

#This iteration went well! I felt comfortable with it.








end