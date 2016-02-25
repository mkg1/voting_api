require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    #c = Candidate.create!(name: "Bob", district: "D", home_town: "H", party: "p")
    get :show#, id: c.id
    assert_response :success
    #assert response.body.include?("Perot") or regex
    #refute response.body.include?("Dole")
  end

  test "should get create" do
    # number_of_records = Candidate.count
    # assert_difference("Candidate.count") do
    #   get :create
    #   assert_response :success
    #end
    get :create
    assert_response :success
    # assert_equal number_of_records + 1, Candidate.count
  end

end
