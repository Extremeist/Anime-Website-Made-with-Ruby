# frozen_string_literal: true

require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test 'should gets index' do
    get search_url
    assert_response :success
  end
end
