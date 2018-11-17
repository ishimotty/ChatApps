# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name,               null: false
      t.string :email,              null: false, default: ""
      t.string :password, null: false, default: ""
      t.timestamps null: false
    end

    add_index :users, :name,                 unique: true
    add_index :users, :email,                unique: true
  end
end
