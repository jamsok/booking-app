require "application_system_test_case"

class EasybookingsTest < ApplicationSystemTestCase
  setup do
    @easybooking = easybookings(:one)
  end

  test "visiting the index" do
    visit easybookings_url
    assert_selector "h1", text: "Easybookings"
  end

  test "creating a Easybooking" do
    visit easybookings_url
    click_on "New Easybooking"

    fill_in "Date of booking", with: @easybooking.date_of_booking
    fill_in "Phone number", with: @easybooking.phone_number
    click_on "Create Easybooking"

    assert_text "Easybooking was successfully created"
    click_on "Back"
  end

  test "updating a Easybooking" do
    visit easybookings_url
    click_on "Edit", match: :first

    fill_in "Date of booking", with: @easybooking.date_of_booking
    fill_in "Phone number", with: @easybooking.phone_number
    click_on "Update Easybooking"

    assert_text "Easybooking was successfully updated"
    click_on "Back"
  end

  test "destroying a Easybooking" do
    visit easybookings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Easybooking was successfully destroyed"
  end
end
