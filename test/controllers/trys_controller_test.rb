require 'test_helper'

class TrysControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get trys_home_url
    assert_response :success
  end

end
