require 'test_helper'

class LogosControllerTest < ActionController::TestCase
  setup do
    @logo = logos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create logo" do
    assert_difference('Logo.count') do
      post :create, params: { logo: { description: @logo.description, uri: @logo.uri } }
    end

    assert_response 201
  end

  test "should show logo" do
    get :show, params: { id: @logo }
    assert_response :success
  end

  test "should update logo" do
    patch :update, params: { id: @logo, logo: { description: @logo.description, uri: @logo.uri } }
    assert_response 200
  end

  test "should destroy logo" do
    assert_difference('Logo.count', -1) do
      delete :destroy, params: { id: @logo }
    end

    assert_response 204
  end
end
