class PlayerSessionsController < ApplicationController
  # GET /player_sessions
  # GET /player_sessions.json
  def index
    @player_sessions = PlayerSession.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @player_sessions }
    end
  end

  # GET /player_sessions/1
  # GET /player_sessions/1.json
  def show
    @player_session = PlayerSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @player_session }
    end
  end

  # GET /player_sessions/new
  # GET /player_sessions/new.json
  def new
    @player_session = PlayerSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @player_session }
    end
  end

  # GET /player_sessions/1/edit
  def edit
    @player_session = PlayerSession.find(params[:id])
  end

  # POST /player_sessions
  # POST /player_sessions.json
  def create
    @player_session = PlayerSession.new(params[:player_session])

    respond_to do |format|
      if @player_session.save
        format.html { redirect_to @player_session, :notice => 'Player session was successfully created.' }
        format.json { render :json => @player_session, :status => :created, :location => @player_session }
      else
        format.html { render :action => "new" }
        format.json { render :json => @player_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /player_sessions/1
  # PUT /player_sessions/1.json
  def update
    @player_session = PlayerSession.find(params[:id])

    respond_to do |format|
      if @player_session.update_attributes(params[:player_session])
        format.html { redirect_to @player_session, :notice => 'Player session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @player_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /player_sessions/1
  # DELETE /player_sessions/1.json
  def destroy
    @player_session = PlayerSession.find(params[:id])
    @player_session.destroy

    respond_to do |format|
      format.html { redirect_to player_sessions_url }
      format.json { head :no_content }
    end
  end
end
