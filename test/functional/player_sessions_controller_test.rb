require 'test_helper'

class PlayerSessionsControllerTest < ActionController::TestCase
  setup do
    @player_session = player_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_session" do
    assert_difference('PlayerSession.count') do
      post :create, :player_session => { :player_id => @player_session.player_id }
    end

    assert_redirected_to player_session_path(assigns(:player_session))
  end

  test "should show player_session" do
    get :show, :id => @player_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @player_session
    assert_response :success
  end

  test "should update player_session" do
    put :update, :id => @player_session, :player_session => { :player_id => @player_session.player_id }
    assert_redirected_to player_session_path(assigns(:player_session))
  end

  test "should destroy player_session" do
    assert_difference('PlayerSession.count', -1) do
      delete :destroy, :id => @player_session
    end

    assert_redirected_to player_sessions_path
  end
end
