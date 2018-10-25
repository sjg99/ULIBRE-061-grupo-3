require "application_system_test_case"

class UsrfavsTest < ApplicationSystemTestCase
  setup do
    @usrfav = usrfavs(:one)
  end

  test "visiting the index" do
    visit usrfavs_url
    assert_selector "h1", text: "Usrfavs"
  end

  test "creating a Usrfav" do
    visit usrfavs_url
    click_on "New Usrfav"

    fill_in "Route", with: @usrfav.route_id
    fill_in "User", with: @usrfav.user_id
    click_on "Create Usrfav"

    assert_text "Usrfav was successfully created"
    click_on "Back"
  end

  test "updating a Usrfav" do
    visit usrfavs_url
    click_on "Edit", match: :first

    fill_in "Route", with: @usrfav.route_id
    fill_in "User", with: @usrfav.user_id
    click_on "Update Usrfav"

    assert_text "Usrfav was successfully updated"
    click_on "Back"
  end

  test "destroying a Usrfav" do
    visit usrfavs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usrfav was successfully destroyed"
  end
end
