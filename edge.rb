class Edge

  attr_accessor :origin, :destiny, :labels

  def initialize origin, destiny
    @origin = origin
    @destiny = destiny
    @labels = Array.new
  end
end
