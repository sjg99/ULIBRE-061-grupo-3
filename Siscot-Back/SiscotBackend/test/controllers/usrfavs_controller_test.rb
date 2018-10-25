require 'test_helper'

class UsrfavsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usrfav = usrfavs(:one)
  end

  test "should get index" do
    get usrfavs_url
    assert_response :success
  end

  test "should get new" do
    get new_usrfav_url
    assert_response :success
  end

  test "should create usrfav" do
    assert_difference('Usrfav.count') do
      post usrfavs_url, params: { usrfav: { route_id: @usrfav.route_id, user_id: @usrfav.user_id } }
    end

    assert_redirected_to usrfav_url(Usrfav.last)
  end

  test "should show usrfav" do
    get usrfav_url(@usrfav)
    assert_response :success
  end

  test "should get edit" do
    get edit_usrfav_url(@usrfav)
    assert_response :success
  end

  test "should update usrfav" do
    patch usrfav_url(@usrfav), params: { usrfav: { route_id: @usrfav.route_id, user_id: @usrfav.user_id } }
    assert_redirected_to usrfav_url(@usrfav)
  end

  test "should destroy usrfav" do
    assert_difference('Usrfav.count', -1) do
      delete usrfav_url(@usrfav)
    end

    assert_redirected_to usrfavs_url
  end
end
