require 'test_helper'

class SfdcControllerTest < ActionDispatch::IntegrationTest
  test "should get push" do
    get sfdc_push_url
    assert_response :success
  end

  test "should get index" do
    get sfdc_index_url
    assert_response :success
  end

end
