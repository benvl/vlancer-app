require 'test_helper'

class Site::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get site_pages_index_url
    assert_response :success
  end

end
