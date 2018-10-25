require "application_system_test_case"

class DriverroutesTest < ApplicationSystemTestCase
  setup do
    @driverroute = driverroutes(:one)
  end

  test "visiting the index" do
    visit driverroutes_url
    assert_selector "h1", text: "Driverroutes"
  end

  test "creating a Driverroute" do
    visit driverroutes_url
    click_on "New Driverroute"

    fill_in "Driver", with: @driverroute.driver_id
    fill_in "Route", with: @driverroute.route_id
    click_on "Create Driverroute"

    assert_text "Driverroute was successfully created"
    click_on "Back"
  end

  test "updating a Driverroute" do
    visit driverroutes_url
    click_on "Edit", match: :first

    fill_in "Driver", with: @driverroute.driver_id
    fill_in "Route", with: @driverroute.route_id
    click_on "Update Driverroute"

    assert_text "Driverroute was successfully updated"
    click_on "Back"
  end

  test "destroying a Driverroute" do
    visit driverroutes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Driverroute was successfully destroyed"
  end
end
