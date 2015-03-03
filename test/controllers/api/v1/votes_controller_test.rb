require 'test_helper'

class Api::V1::VotesControllerTest < ActionController::TestCase
  test "should get create" do
    @request.headers["Authorization"] = "Token f16a96fe5ae61836993a60c62ac1b23c"
    post :create, vote: {voter_id: 1, candidate_id:2}
    assert_response :success
  end

  test "should get index" do
    @request.headers["Authorization"] = "Token f16a96fe5ae61836993a60c62ac1b23c"
    get :index
    assert_response :success
  end

end
