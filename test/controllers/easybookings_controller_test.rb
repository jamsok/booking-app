require "test_helper"

class EasybookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @easybooking = easybookings(:one)
  end

  test "should get index" do
    get easybookings_url
    assert_response :success
  end

  test "should get new" do
    get new_easybooking_url
    assert_response :success
  end

  test "should create easybooking" do
    assert_difference('Easybooking.count') do
      post easybookings_url, params: { easybooking: { date_of_booking: @easybooking.date_of_booking, phone_number: @easybooking.phone_number } }
    end

    assert_redirected_to easybooking_url(Easybooking.last)
  end

  test "should show easybooking" do
    get easybooking_url(@easybooking)
    assert_response :success
  end

  test "should get edit" do
    get edit_easybooking_url(@easybooking)
    assert_response :success
  end

  test "should update easybooking" do
    patch easybooking_url(@easybooking), params: { easybooking: { date_of_booking: @easybooking.date_of_booking, phone_number: @easybooking.phone_number } }
    assert_redirected_to easybooking_url(@easybooking)
  end

  test "should destroy easybooking" do
    assert_difference('Easybooking.count', -1) do
      delete easybooking_url(@easybooking)
    end

    assert_redirected_to easybookings_url
  end
end
