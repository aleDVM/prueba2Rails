require 'test_helper'

class SolutionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get solutions_create_url
    assert_response :success
  end

end
