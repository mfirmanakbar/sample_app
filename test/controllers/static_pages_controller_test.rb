require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  # setup is a function which automatically run before every test

  def setup
    @base_title = 'Ruby on Rails Tutorial Sample App'
  end

  test 'should get home' do
    get root_path
    assert_response :success
    assert_select 'title', "Home | #{@base_title}"
  end

  test 'should get help' do
    get help_path
    assert_response :success
    assert_select 'title', "Help | #{@base_title}"
  end

  test 'should get about' do
    get about_path
    assert_response :success
    assert_select 'title', @base_title
  end

  test 'should get contact' do
    get contact_path
    assert_response :success
    assert_select 'title', "Contact | #{@base_title}"
  end
end
