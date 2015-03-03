class Api::V1::VotersController < ApplicationController
  before_filter :restrict_access
  def create
    @voter = Voter.new(voter_params)

    if @voter.save
      render json: @voter
    else
      render json: "Invalid parameters"
    end
  end

  def update
    @voter = Voter.find(params[:id])
    if @voter.save
      render json: @voter
    else
      render json: "Invalid parameters"
    end
  end

  def show
    @voter = Voter.find(params[:id])
    render json: @voter
  end

  private
  
  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(access_token: token)
    end
  end

  def voter_params
    params.require(:voter).permit(:name, :party)
  end
end
