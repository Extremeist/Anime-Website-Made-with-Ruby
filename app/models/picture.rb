# frozen_string_literal: true

class Picture < ApplicationRecord
  has_rich_text :body
end
