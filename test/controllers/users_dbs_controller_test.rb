require 'test_helper'

class UsersDbsControllerTest < ActionController::TestCase
  setup do
    @users_db = users_dbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_dbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_db" do
    assert_difference('UsersDb.count') do
      post :create, users_db: { email: @users_db.email, username: @users_db.username }
    end

    assert_redirected_to users_db_path(assigns(:users_db))
  end

  test "should show users_db" do
    get :show, id: @users_db
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_db
    assert_response :success
  end

  test "should update users_db" do
    patch :update, id: @users_db, users_db: { email: @users_db.email, username: @users_db.username }
    assert_redirected_to users_db_path(assigns(:users_db))
  end

  test "should destroy users_db" do
    assert_difference('UsersDb.count', -1) do
      delete :destroy, id: @users_db
    end

    assert_redirected_to users_dbs_path
  end
end
