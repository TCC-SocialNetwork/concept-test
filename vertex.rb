class Vertex

  attr_accessor :user, :edges

  def initialize user
    @user = user
    @edges = Array.new
  end
end
