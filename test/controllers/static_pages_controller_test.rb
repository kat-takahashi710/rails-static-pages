require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def gen_page_title(title)
    "#{title} | Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", gen_page_title("Home")
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", gen_page_title("Help")
  end
  
  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", gen_page_title("About")
  end
end
