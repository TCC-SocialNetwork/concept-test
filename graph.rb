class Graph

  attr_accessor :network

  def initialize
    @network = Array.new
  end

  def add_user user
    @network.push user
  end

  def set_white
    @network.each do |vertex|
      vertex.color = :white
    end
  end

  def dfs
    set_white

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

  def bfs
    set_white

    @network.each do |vertex|
      if vertex.color == :white
        queue = Queue.new
        vertex.color = :gray
        queue << vertex
        bfs_visit queue
      end
    end
  end

  def bfs_visit queue
    while not queue.empty? do
      root = queue.pop

      root.edges.each do |edge|
        vertex = edge.destiny
        if vertex.color == :white
          vertex.color = :gray 
          queue << vertex
        end
      end
      root.color = :black
      puts root
    end
  end
end
