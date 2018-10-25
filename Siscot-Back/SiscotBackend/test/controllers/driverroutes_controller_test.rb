require 'test_helper'

class DriverroutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @driverroute = driverroutes(:one)
  end

  test "should get index" do
    get driverroutes_url
    assert_response :success
  end

  test "should get new" do
    get new_driverroute_url
    assert_response :success
  end

  test "should create driverroute" do
    assert_difference('Driverroute.count') do
      post driverroutes_url, params: { driverroute: { driver_id: @driverroute.driver_id, route_id: @driverroute.route_id } }
    end

    assert_redirected_to driverroute_url(Driverroute.last)
  end

  test "should show driverroute" do
    get driverroute_url(@driverroute)
    assert_response :success
  end

  test "should get edit" do
    get edit_driverroute_url(@driverroute)
    assert_response :success
  end

  test "should update driverroute" do
    patch driverroute_url(@driverroute), params: { driverroute: { driver_id: @driverroute.driver_id, route_id: @driverroute.route_id } }
    assert_redirected_to driverroute_url(@driverroute)
  end

  test "should destroy driverroute" do
    assert_difference('Driverroute.count', -1) do
      delete driverroute_url(@driverroute)
    end

    assert_redirected_to driverroutes_url
  end
end
