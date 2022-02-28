# frozen_string_literal: true

class AddUserToOrganizations < ActiveRecord::Migration[6.1]
  def change
    add_reference :organizations, :user, null: false, foreign_key: true
  end
end
