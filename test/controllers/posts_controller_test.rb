require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/posts/index"
    assert_response :success
  end

end
