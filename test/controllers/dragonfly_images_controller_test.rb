require 'test_helper'

class DragonflyImagesControllerTest < ActionController::TestCase
  setup do
    @dragonfly_image = dragonfly_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dragonfly_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dragonfly_image" do
    assert_difference('DragonflyImage.count') do
      post :create, dragonfly_image: {  }
    end

    assert_redirected_to dragonfly_image_path(assigns(:dragonfly_image))
  end

  test "should show dragonfly_image" do
    get :show, id: @dragonfly_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dragonfly_image
    assert_response :success
  end

  test "should update dragonfly_image" do
    patch :update, id: @dragonfly_image, dragonfly_image: {  }
    assert_redirected_to dragonfly_image_path(assigns(:dragonfly_image))
  end

  test "should destroy dragonfly_image" do
    assert_difference('DragonflyImage.count', -1) do
      delete :destroy, id: @dragonfly_image
    end

    assert_redirected_to dragonfly_images_path
  end
end
