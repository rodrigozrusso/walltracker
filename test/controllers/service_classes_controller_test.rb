require 'test_helper'

class ServiceClassesControllerTest < ActionController::TestCase
  setup do
    @service_class = service_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_class" do
    assert_difference('ServiceClass.count') do
      post :create, service_class: { description: @service_class.description, image: @service_class.image, limit: @service_class.limit, name: @service_class.name }
    end

    assert_redirected_to service_class_path(assigns(:service_class))
  end

  test "should show service_class" do
    get :show, id: @service_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_class
    assert_response :success
  end

  test "should update service_class" do
    patch :update, id: @service_class, service_class: { description: @service_class.description, image: @service_class.image, limit: @service_class.limit, name: @service_class.name }
    assert_redirected_to service_class_path(assigns(:service_class))
  end

  test "should destroy service_class" do
    assert_difference('ServiceClass.count', -1) do
      delete :destroy, id: @service_class
    end

    assert_redirected_to service_classes_path
  end
end
