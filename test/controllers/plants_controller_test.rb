require "test_helper"

class PlantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plant = plants(:one)
  end

  test "should get index" do
    get plants_url
    assert_response :success
  end

  test "should get new" do
    get new_plant_url
    assert_response :success
  end

  test "should create plant" do
    assert_difference("Plant.count") do
      post plants_url, params: { plant: { begin_prod: @plant.begin_prod, common_name: @plant.common_name, end_prod: @plant.end_prod, green_end_prod: @plant.green_end_prod, green_seed_start: @plant.green_seed_start, sci_name: @plant.sci_name, seed_start: @plant.seed_start } }
    end

    assert_redirected_to plant_url(Plant.last)
  end

  test "should show plant" do
    get plant_url(@plant)
    assert_response :success
  end

  test "should get edit" do
    get edit_plant_url(@plant)
    assert_response :success
  end

  test "should update plant" do
    patch plant_url(@plant), params: { plant: { begin_prod: @plant.begin_prod, common_name: @plant.common_name, end_prod: @plant.end_prod, green_end_prod: @plant.green_end_prod, green_seed_start: @plant.green_seed_start, sci_name: @plant.sci_name, seed_start: @plant.seed_start } }
    assert_redirected_to plant_url(@plant)
  end

  test "should destroy plant" do
    assert_difference("Plant.count", -1) do
      delete plant_url(@plant)
    end

    assert_redirected_to plants_url
  end
end
