require "application_system_test_case"

class PlantsTest < ApplicationSystemTestCase
  setup do
    @plant = plants(:one)
  end

  test "visiting the index" do
    visit plants_url
    assert_selector "h1", text: "Plants"
  end

  test "should create plant" do
    visit plants_url
    click_on "New plant"

    fill_in "Begin prod", with: @plant.begin_prod
    fill_in "Common name", with: @plant.common_name
    fill_in "End prod", with: @plant.end_prod
    fill_in "Green end prod", with: @plant.green_end_prod
    fill_in "Green seed start", with: @plant.green_seed_start
    fill_in "Sci name", with: @plant.sci_name
    fill_in "Seed start", with: @plant.seed_start
    click_on "Create Plant"

    assert_text "Plant was successfully created"
    click_on "Back"
  end

  test "should update Plant" do
    visit plant_url(@plant)
    click_on "Edit this plant", match: :first

    fill_in "Begin prod", with: @plant.begin_prod
    fill_in "Common name", with: @plant.common_name
    fill_in "End prod", with: @plant.end_prod
    fill_in "Green end prod", with: @plant.green_end_prod
    fill_in "Green seed start", with: @plant.green_seed_start
    fill_in "Sci name", with: @plant.sci_name
    fill_in "Seed start", with: @plant.seed_start
    click_on "Update Plant"

    assert_text "Plant was successfully updated"
    click_on "Back"
  end

  test "should destroy Plant" do
    visit plant_url(@plant)
    click_on "Destroy this plant", match: :first

    assert_text "Plant was successfully destroyed"
  end
end
