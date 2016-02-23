require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  def test_class_exists
    assert Voter
  end

  def test_new_voter_can_be_created
    v = Voter.create!(name: "George Washington")
    assert_equal "George Washington", v.name
  end
end
