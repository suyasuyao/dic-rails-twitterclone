require 'test_helper'

class MentionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mentions_new_url
    assert_response :success
  end

  test "should get index" do
    get mentions_index_url
    assert_response :success
  end

  test "should get edit" do
    get mentions_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get mentions_destroy_url
    assert_response :success
  end

end
