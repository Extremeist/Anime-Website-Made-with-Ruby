# frozen_string_literal: true

class Comment < ApplicationRecord
  include Visible
  has_rich_text :body
  belongs_to :anime
end
