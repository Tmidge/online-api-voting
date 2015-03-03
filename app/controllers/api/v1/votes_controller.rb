class Api::V1::VotesController < ApplicationController
  before_filter :restrict_access
  def create
    @vote = Vote.new(vote_params)

    if @vote.save
      render json: @vote
    else
      render json: "Invalid parameters"
    end
  end


  def index
    render json: Vote.all
  end

  private

  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(access_token: token)
    end
  end

  def vote_params
    params.require(:vote).permit(:name, :party)
  end
end
