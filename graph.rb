class Graph

  attr_accessor :network

  def initialize
    @network = Array.new
  end

  def add_user user
    @network.push user
  end

  def dfs
    @network.each do |vertex|
      vertex.color = :white
    end

    @network.each do |vertex|
      dfs_visit(vertex) if vertex.color == :white
    end
  end

  def dfs_visit root
    root.color = :gray
    root.edges.each do |edge|
      vertex = edge.destiny
      dfs_visit vertex if vertex.color == :white
    end
    root.color = :black
  end

end
