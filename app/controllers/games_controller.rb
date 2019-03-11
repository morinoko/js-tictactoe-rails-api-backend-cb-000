class GamesController < ApplicationController
  def index
  end

  def show
  end

  def create
    @game = Game.new(params)
    render json: @game
  end

  def update
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end
end
