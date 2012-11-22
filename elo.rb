require 'minitest/spec'
require 'minitest/autorun'

class Player
  attr_accessor :rating

  def initialize(rating=100)
    @rating = rating
  end

  def expected_outcome(opponent_rating)
    1.0/(1 + 10**((opponent_rating - @rating)/400))
  end
  def calculate_new_rating
    @rating = 115
  end
end



describe "result" do
  describe "when both players start with rating of 100 and k factor of 30" do
    it "must return 115 for the winner" do
      winner = Player.new
      winner.calculate_new_rating
      new_rating = winner.rating
      new_rating.must_equal 115
    end
  end
  describe "expected outcome" do
    it "must return 0.5 when ratings are equal" do
      winner = Player.new
      winner.expected_outcome.must_equal 0.5
    end
  end

end

