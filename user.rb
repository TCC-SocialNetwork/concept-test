require './edge'

class User

  attr_accessor :name, :edges

  def initialize name
    @name = name
    @edges = Array.new
  end

  def follow_user user
    edge = Edge.new self, user
    edge.labels << "following"

    edges.push edge
  end

  def add_friend user
    edge = Edge.new self, user
    edge.labels.insert 0, "pendent", "friend"

    edges.push edge
  end

  def confirm_friend user
    my_edge = Edge.new self, user
    my_edge.labels.push "friend"

    edges.push my_edge

    edge = user.edges.bsearch do |e|
      e.origin == user and e.destiny == self
    end

    edge.labels.delete "pendent"
  end

  def to_s
    "#{@name}"
  end
end
