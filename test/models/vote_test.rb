require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  def test_class_exists
    assert Vote
  end

  def test_new_vote_can_be_created
    c = Candidate.create!(id: 1, name: "The Donald")
    v = Voter.create!(id: 3, name: "George Washington")
    vote = Vote.create!(candidate_id: c.id, voter_id: v.id)
    assert_equal 1, vote.candidate_id
    assert_equal 3, vote.voter_id
  end
end
