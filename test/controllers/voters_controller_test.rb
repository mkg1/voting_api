require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should get create" do
    # asset_difference("Voter.count") do
    get :create
    assert_response :success
    # end
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

end
