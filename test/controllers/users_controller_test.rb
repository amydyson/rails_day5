require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get users_register_url
    assert_response :success
  end

  test "should get confirmation" do
    get users_confirmation_url
    assert_response :success
  end

  test "should get login" do
    get users_login_url
    assert_response :success
  end

  test "should get welcome" do
    get users_welcome_url
    assert_response :success
  end

end
