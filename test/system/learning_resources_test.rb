require "application_system_test_case"

class LearningResourcesTest < ApplicationSystemTestCase
  setup do
    @learning_resource = learning_resources(:one)
  end

  test "visiting the index" do
    visit learning_resources_url
    assert_selector "h1", text: "Learning resources"
  end

  test "should create learning resource" do
    visit learning_resources_url
    click_on "New learning resource"

    fill_in "Description", with: @learning_resource.description
    fill_in "Resource type", with: @learning_resource.resource_type
    fill_in "Title", with: @learning_resource.title
    fill_in "Url", with: @learning_resource.url
    click_on "Create Learning resource"

    assert_text "Learning resource was successfully created"
    click_on "Back"
  end

  test "should update Learning resource" do
    visit learning_resource_url(@learning_resource)
    click_on "Edit this learning resource", match: :first

    fill_in "Description", with: @learning_resource.description
    fill_in "Resource type", with: @learning_resource.resource_type
    fill_in "Title", with: @learning_resource.title
    fill_in "Url", with: @learning_resource.url
    click_on "Update Learning resource"

    assert_text "Learning resource was successfully updated"
    click_on "Back"
  end

  test "should destroy Learning resource" do
    visit learning_resource_url(@learning_resource)
    click_on "Destroy this learning resource", match: :first

    assert_text "Learning resource was successfully destroyed"
  end
end
