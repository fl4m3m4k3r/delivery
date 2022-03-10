# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
