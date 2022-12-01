# frozen_string_literal: true

require 'test_helper'

class AnimeTest < ActiveSupport::TestCase
  test 'the truth' do
    assert true
  end

  test 'should not save submission without title' do
    anime = Anime.new
    assert_not anime.save, "saved the submission without a title"
  end
end
