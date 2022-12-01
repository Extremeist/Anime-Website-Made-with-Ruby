# frozen_string_literal: true

class Anime < ApplicationRecord
  include Visible
  has_rich_text :body
  has_many :comments, dependent: :destroy
  has_one :action_text_rich_text,
          class_name: 'ActionText::RichText',
          as: :record
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
