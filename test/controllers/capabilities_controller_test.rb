require 'test_helper'

class CapabilitiesControllerTest < ActionController::TestCase
  setup do
    @capability = capabilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:capabilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create capability" do
    assert_difference('Capability.count') do
      post :create, capability: { name: @capability.name }
    end

    assert_redirected_to capability_path(assigns(:capability))
  end

  test "should show capability" do
    get :show, id: @capability
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @capability
    assert_response :success
  end

  test "should update capability" do
    patch :update, id: @capability, capability: { name: @capability.name }
    assert_redirected_to capability_path(assigns(:capability))
  end

  test "should destroy capability" do
    assert_difference('Capability.count', -1) do
      delete :destroy, id: @capability
    end

    assert_redirected_to capabilities_path
  end
end
