require 'test_helper'

class DeckControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get deck_new_url
    assert_response :success
  end

  test "should get create" do
    get deck_create_url
    assert_response :success
  end

  test "should get index" do
    get deck_index_url
    assert_response :success
  end

  test "should get destroy" do
    get deck_destroy_url
    assert_response :success
  end

  test "should get show" do
    get deck_show_url
    assert_response :success
  end

  test "should get edit" do
    get deck_edit_url
    assert_response :success
  end

  test "should get update" do
    get deck_update_url
    assert_response :success
  end

end
