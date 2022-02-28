# frozen_string_literal: true

class Organization < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
end
