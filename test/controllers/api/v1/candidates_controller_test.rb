require 'test_helper'

class Api::V1::CandidatesControllerTest < ActionController::TestCase
  setup do
    @bill = Candidate.create(name:"Bill",party:"D")
  end

  test "should get index" do
    @request.headers["Authorization"] = "Token f16a96fe5ae61836993a60c62ac1b23c"
    get :index
    assert_response :success
  end

  test "should get show" do
    @request.headers["Authorization"] = "Token f16a96fe5ae61836993a60c62ac1b23c"
    get :show, {id: @bill.id}
    assert_response :success
  end

end
