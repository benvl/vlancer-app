require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  test "should get page/home" do
    get site_page/home_url
    assert_response :success
  end

end
