require 'test_helper'

class Api::V1::SpeechesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get api_v1_speeches_new_url
    assert_response :success
  end

  test "should get edit" do
    get api_v1_speeches_edit_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_speeches_show_url
    assert_response :success
  end

  test "should get index" do
    get api_v1_speeches_index_url
    assert_response :success
  end

end
