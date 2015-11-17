require './graph'
require './user'

class Seeds

  attr_accessor :user1, :user2, :user3, :graph

  def initialize
    @user1 = User.new name: 'Jefferson'
    @user2 = User.new name: 'Álex'
    @user3 = User.new name: 'João'

    @graph = Graph.new
    @graph.add_user @user1
    @graph.add_user @user2
    @graph.add_user @user3

    @user1.add_friend @user2
    @user2.follow_user @user3
  end
end
