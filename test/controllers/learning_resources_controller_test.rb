require "test_helper"

class LearningResourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @learning_resource = learning_resources(:one)
  end

  test "should get index" do
    get learning_resources_url
    assert_response :success
  end

  test "should get new" do
    get new_learning_resource_url
    assert_response :success
  end

  test "should create learning_resource" do
    assert_difference("LearningResource.count") do
      post learning_resources_url, params: { learning_resource: { description: @learning_resource.description, resource_type: @learning_resource.resource_type, title: @learning_resource.title, url: @learning_resource.url } }
    end

    assert_redirected_to learning_resource_url(LearningResource.last)
  end

  test "should show learning_resource" do
    get learning_resource_url(@learning_resource)
    assert_response :success
  end

  test "should get edit" do
    get edit_learning_resource_url(@learning_resource)
    assert_response :success
  end

  test "should update learning_resource" do
    patch learning_resource_url(@learning_resource), params: { learning_resource: { description: @learning_resource.description, resource_type: @learning_resource.resource_type, title: @learning_resource.title, url: @learning_resource.url } }
    assert_redirected_to learning_resource_url(@learning_resource)
  end

  test "should destroy learning_resource" do
    assert_difference("LearningResource.count", -1) do
      delete learning_resource_url(@learning_resource)
    end

    assert_redirected_to learning_resources_url
  end
end
