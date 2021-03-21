require "test_helper"

class BloodbanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bloodbank = bloodbanks(:one)
  end

  test "should get index" do
    get bloodbanks_url
    assert_response :success
  end

  test "should get new" do
    get new_bloodbank_url
    assert_response :success
  end

  test "should create bloodbank" do
    assert_difference('Bloodbank.count') do
      post bloodbanks_url, params: { bloodbank: { address: @bloodbank.address, availability: @bloodbank.availability, category: @bloodbank.category, name: @bloodbank.name } }
    end

    assert_redirected_to bloodbank_url(Bloodbank.last)
  end

  test "should show bloodbank" do
    get bloodbank_url(@bloodbank)
    assert_response :success
  end

  test "should get edit" do
    get edit_bloodbank_url(@bloodbank)
    assert_response :success
  end

  test "should update bloodbank" do
    patch bloodbank_url(@bloodbank), params: { bloodbank: { address: @bloodbank.address, availability: @bloodbank.availability, category: @bloodbank.category, name: @bloodbank.name } }
    assert_redirected_to bloodbank_url(@bloodbank)
  end

  test "should destroy bloodbank" do
    assert_difference('Bloodbank.count', -1) do
      delete bloodbank_url(@bloodbank)
    end

    assert_redirected_to bloodbanks_url
  end
end
