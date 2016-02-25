require 'securerandom'
class VotersController < ApplicationController
  def create
    new_voter = Voter.create(name: params[:name], party: params[:party])
    render json: new_voter
  end

  def show
    show_voter = Voter.find(params[:id])
    render json: show_voter if show_voter.token == params[:token]
  end

  def update
  end
end
