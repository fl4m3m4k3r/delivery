# frozen_string_literal: true

class ChangeColumnNameFromUserToOwnerAtOrganizationsTable < ActiveRecord::Migration[6.1]
  def change
    rename_column :organizations, :user_id, :owner_id
  end
end
