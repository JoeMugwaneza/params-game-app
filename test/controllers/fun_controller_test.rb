require 'test_helper'

class FunControllerTest < ActionDispatch::IntegrationTest
  test "should get gaming_action" do
    get fun_gaming_action_url
    assert_response :success
  end

end
