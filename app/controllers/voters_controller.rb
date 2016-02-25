class VotersController < ApplicationController
  def create
    Voter.create(name: params[:name], party: params[:party], token: params[:token])
  end

  def show
  end

  def update
  end
end
