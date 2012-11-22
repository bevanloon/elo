require 'minitest/spec'
require 'minitest/autorun'

class Player
  attr_accessor :rating

  def initialize(rating=100)
    @rating = rating
  end
end



describe "result" do
  describe "when both players start with rating of 100 and k factor of 30" do
    it "must return 115 for the winner" do
      player = Player.new
      new_rating = player.rating
      new_rating.must_equal 115
    end
  end
end

