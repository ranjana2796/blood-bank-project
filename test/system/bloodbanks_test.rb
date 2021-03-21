require "application_system_test_case"

class BloodbanksTest < ApplicationSystemTestCase
  setup do
    @bloodbank = bloodbanks(:one)
  end

  test "visiting the index" do
    visit bloodbanks_url
    assert_selector "h1", text: "Bloodbanks"
  end

  test "creating a Bloodbank" do
    visit bloodbanks_url
    click_on "New Bloodbank"

    fill_in "Address", with: @bloodbank.address
    fill_in "Availability", with: @bloodbank.availability
    fill_in "Category", with: @bloodbank.category
    fill_in "Name", with: @bloodbank.name
    click_on "Create Bloodbank"

    assert_text "Bloodbank was successfully created"
    click_on "Back"
  end

  test "updating a Bloodbank" do
    visit bloodbanks_url
    click_on "Edit", match: :first

    fill_in "Address", with: @bloodbank.address
    fill_in "Availability", with: @bloodbank.availability
    fill_in "Category", with: @bloodbank.category
    fill_in "Name", with: @bloodbank.name
    click_on "Update Bloodbank"

    assert_text "Bloodbank was successfully updated"
    click_on "Back"
  end

  test "destroying a Bloodbank" do
    visit bloodbanks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bloodbank was successfully destroyed"
  end
end
