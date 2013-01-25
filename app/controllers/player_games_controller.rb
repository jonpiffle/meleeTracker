class PlayerGamesController < ApplicationController
  # GET /player_games
  # GET /player_games.json
  def index
    @player_games = PlayerGame.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @player_games }
    end
  end

  # GET /player_games/1
  # GET /player_games/1.json
  def show
    @player_game = PlayerGame.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @player_game }
    end
  end

  # GET /player_games/new
  # GET /player_games/new.json
  def new
    @player_game = PlayerGame.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @player_game }
    end
  end

  # GET /player_games/1/edit
  def edit
    @player_game = PlayerGame.find(params[:id])
  end

  # POST /player_games
  # POST /player_games.json
  def create
    @player_game = PlayerGame.new(params[:player_game])

    respond_to do |format|
      if @player_game.save
        format.html { redirect_to @player_game, :notice => 'Player game was successfully created.' }
        format.json { render :json => @player_game, :status => :created, :location => @player_game }
      else
        format.html { render :action => "new" }
        format.json { render :json => @player_game.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /player_games/1
  # PUT /player_games/1.json
  def update
    @player_game = PlayerGame.find(params[:id])

    respond_to do |format|
      if @player_game.update_attributes(params[:player_game])
        format.html { redirect_to @player_game, :notice => 'Player game was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @player_game.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /player_games/1
  # DELETE /player_games/1.json
  def destroy
    @player_game = PlayerGame.find(params[:id])
    @player_game.destroy

    respond_to do |format|
      format.html { redirect_to player_games_url }
      format.json { head :no_content }
    end
  end
end
