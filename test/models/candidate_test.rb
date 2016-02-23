require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  def test_class_exists
    assert Candidate
  end

  def test_new_candidate_can_be_created
    c = Candidate.create!(name: "The Donald")
    assert_equal "The Donald", c.name
  end
end
