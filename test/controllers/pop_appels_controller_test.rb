require 'test_helper'

class PopAppelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pop_appel = pop_appels(:one)
  end

  test "should get index" do
    get pop_appels_url
    assert_response :success
  end

  test "should get new" do
    get new_pop_appel_url
    assert_response :success
  end

  test "should create pop_appel" do
    assert_difference('PopAppel.count') do
      post pop_appels_url, params: { pop_appel: { firstname: @pop_appel.firstname, lastname: @pop_appel.lastname, presence: @pop_appel.presence } }
    end

    assert_redirected_to pop_appel_url(PopAppel.last)
  end

  test "should show pop_appel" do
    get pop_appel_url(@pop_appel)
    assert_response :success
  end

  test "should get edit" do
    get edit_pop_appel_url(@pop_appel)
    assert_response :success
  end

  test "should update pop_appel" do
    patch pop_appel_url(@pop_appel), params: { pop_appel: { firstname: @pop_appel.firstname, lastname: @pop_appel.lastname, presence: @pop_appel.presence } }
    assert_redirected_to pop_appel_url(@pop_appel)
  end

  test "should destroy pop_appel" do
    assert_difference('PopAppel.count', -1) do
      delete pop_appel_url(@pop_appel)
    end

    assert_redirected_to pop_appels_url
  end
end
