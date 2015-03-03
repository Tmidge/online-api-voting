require 'test_helper'

class Api::V1::VotersControllerTest < ActionController::TestCase
  setup do
    @billybob = Voter.create(name:"BillyBob",party:"R")
  end

  test "should get create" do
    @request.headers["Authorization"] = "Token f16a96fe5ae61836993a60c62ac1b23c"
    post :create, voter: {name:"Dum", party:"D"}
    assert_response :success
  end

  test "should get update" do
    @request.headers["Authorization"] = "Token f16a96fe5ae61836993a60c62ac1b23c"
    post :update, {id:@billybob.id, name:"Dumb", party:"R"}
    assert_response :success
  end

  test "should get show" do
    @request.headers["Authorization"] = "Token f16a96fe5ae61836993a60c62ac1b23c"
    get :show, {id: @billybob.id}
    assert_response :success
  end

end
