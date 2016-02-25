class VotesController < ApplicationController
  def create
    find_voter = Voter.find(params[:id])
    v = Vote.create(voter_id: params[:voter_id], candidate_id: params[:candidate_id]) if find_voter.token = params[:token]
    render json: v
  end

  def destroy
    v = Vote.find(params[:id])
    v.destroy
    render json: "Vote was deleted."
  end

  def index
    render json: Vote.all
  end
end
