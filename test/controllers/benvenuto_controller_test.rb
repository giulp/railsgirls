require 'test_helper'

class BenvenutoControllerTest < ActionController::TestCase
  setup do
    @benvenuto = benvenuto(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:benvenuto)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create benvenuto" do
    assert_difference('Benvenuto.count') do
      post :create, benvenuto: {  }
    end

    assert_redirected_to benvenuto_path(assigns(:benvenuto))
  end

  test "should show benvenuto" do
    get :show, id: @benvenuto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @benvenuto
    assert_response :success
  end

  test "should update benvenuto" do
    patch :update, id: @benvenuto, benvenuto: {  }
    assert_redirected_to benvenuto_path(assigns(:benvenuto))
  end

  test "should destroy benvenuto" do
    assert_difference('Benvenuto.count', -1) do
      delete :destroy, id: @benvenuto
    end

    assert_redirected_to benvenuto_index_path
  end
end
