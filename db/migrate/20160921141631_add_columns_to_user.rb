class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :email, :string
    add_column :users, :link, :string
    add_column :users, :username, :string
    add_column :users, :gender, :string
    add_column :users, :image, :text
    add_column :users, :fb_verified, :boolean
  end
end
