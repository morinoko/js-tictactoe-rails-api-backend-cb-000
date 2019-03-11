class GamesController < ApplicationController
  def index
  end

  def show
    @game = Game.find_by(id: params[:id])
    render json: @game, status: 200
  end

  def create
    @game = Game.create(params)
    render json: @game, status: 201
  end

  def update
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end
end
