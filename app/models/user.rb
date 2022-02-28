# frozen_string_literal: true

# User which can be: user, pro, operator, admin
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  enum role: { user: 0, pro: 1, operator: 2, admin: 3 }
  after_initialize :set_default_role, if: :new_record?

  has_many :organizations, dependent: :destroy

  def set_default_role
    self.role ||= :user
  end
end
