require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get art" do
    get :art
    assert_response :success
  end

  test "should get business" do
    get :business
    assert_response :success
  end

  test "should get code" do
    get :code
    assert_response :success
  end

  test "should get tshirts" do
    get :tshirts
    assert_response :success
  end

end
