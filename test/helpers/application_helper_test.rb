require 'test_helper'

# PLEASE set `include ApplicationHelper`
# inside test_helper.rb

class ApplicationHelperTest < ActionView::TestCase

  def setup
    @base_title = 'Ruby on Rails Tutorial Sample App'
  end

  test 'full title helper' do
    assert_equal full_title, @base_title
    assert_equal full_title('Help'), "Help | #{@base_title}"
  end
end