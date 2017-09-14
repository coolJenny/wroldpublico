require 'test_helper'

class PediatricsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pediatric = pediatrics(:one)
  end

  test "should get index" do
    get pediatrics_url
    assert_response :success
  end

  test "should get new" do
    get new_pediatric_url
    assert_response :success
  end

  test "should create pediatric" do
    assert_difference('Pediatric.count') do
      post pediatrics_url, params: { pediatric: { content: @pediatric.content, uid: @pediatric.uid } }
    end

    assert_redirected_to pediatric_url(Pediatric.last)
  end

  test "should show pediatric" do
    get pediatric_url(@pediatric)
    assert_response :success
  end

  test "should get edit" do
    get edit_pediatric_url(@pediatric)
    assert_response :success
  end

  test "should update pediatric" do
    patch pediatric_url(@pediatric), params: { pediatric: { content: @pediatric.content, uid: @pediatric.uid } }
    assert_redirected_to pediatric_url(@pediatric)
  end

  test "should destroy pediatric" do
    assert_difference('Pediatric.count', -1) do
      delete pediatric_url(@pediatric)
    end

    assert_redirected_to pediatrics_url
  end
end
