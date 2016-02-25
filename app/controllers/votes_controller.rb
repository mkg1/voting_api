class VotesController < ApplicationController
  def create
    v = Vote.create(voter_id: params[:voter_id], candidate_id[:candidate_id])
    render json: v
  end

  def destroy
    v = Vote.find(params[:id])
    v.destroy
    render json: "Vote was deleted."
  end

  def index
    render json: Votes.all
  end
end
