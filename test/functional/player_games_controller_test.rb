require 'test_helper'

class PlayerGamesControllerTest < ActionController::TestCase
  setup do
    @player_game = player_games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_game" do
    assert_difference('PlayerGame.count') do
      post :create, :player_game => { :character => @player_game.character, :game_id => @player_game.game_id, :player_id => @player_game.player_id, :winner => @player_game.winner }
    end

    assert_redirected_to player_game_path(assigns(:player_game))
  end

  test "should show player_game" do
    get :show, :id => @player_game
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @player_game
    assert_response :success
  end

  test "should update player_game" do
    put :update, :id => @player_game, :player_game => { :character => @player_game.character, :game_id => @player_game.game_id, :player_id => @player_game.player_id, :winner => @player_game.winner }
    assert_redirected_to player_game_path(assigns(:player_game))
  end

  test "should destroy player_game" do
    assert_difference('PlayerGame.count', -1) do
      delete :destroy, :id => @player_game
    end

    assert_redirected_to player_games_path
  end
end
