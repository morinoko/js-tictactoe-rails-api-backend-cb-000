class GamesController < ApplicationController
  def index
  end

  def show
  end

  def create
    @game = Game.new()
  end

  def update
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end
end
