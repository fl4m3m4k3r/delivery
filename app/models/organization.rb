# frozen_string_literal: true

class Organization < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  has_many :products, dependent: :destroy

  validates :title, presence: true
end
