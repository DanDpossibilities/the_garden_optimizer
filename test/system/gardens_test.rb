require "application_system_test_case"

class GardensTest < ApplicationSystemTestCase
  setup do
    @garden = gardens(:one)
  end

  test "visiting the index" do
    visit gardens_url
    assert_selector "h1", text: "Gardens"
  end

  test "should create garden" do
    visit gardens_url
    click_on "New garden"

    fill_in "Garden name", with: @garden.garden_name
    check "Greenhouse" if @garden.greenhouse
    check "Public" if @garden.public
    fill_in "Start date", with: @garden.start_date
    click_on "Create Garden"

    assert_text "Garden was successfully created"
    click_on "Back"
  end

  test "should update Garden" do
    visit garden_url(@garden)
    click_on "Edit this garden", match: :first

    fill_in "Garden name", with: @garden.garden_name
    check "Greenhouse" if @garden.greenhouse
    check "Public" if @garden.public
    fill_in "Start date", with: @garden.start_date
    click_on "Update Garden"

    assert_text "Garden was successfully updated"
    click_on "Back"
  end

  test "should destroy Garden" do
    visit garden_url(@garden)
    click_on "Destroy this garden", match: :first

    assert_text "Garden was successfully destroyed"
  end
end
