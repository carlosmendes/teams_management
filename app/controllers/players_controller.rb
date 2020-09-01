class PlayersController < ApplicationController
  def create
    @team = Team.find(params[:team_id])
    @player = Player.new(player_params)
    @player.team = @team
    if @player.save
      redirect_to team_path(@team)
    else
      # render 'team_path'
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  private

  def player_params
    params.require(:player).permit(:name, :position, :value, :photo_url)
  end
end
