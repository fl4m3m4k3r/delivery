# frozen_string_literal: true

class Organization < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  validates :title, presence: true
end
