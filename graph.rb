class Graph

  attr_accessor :network

  def initialize
    @network = Array.new
  end

  def add_user user
    @network.push user
  end
end
