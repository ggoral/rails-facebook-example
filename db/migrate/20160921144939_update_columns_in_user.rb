class UpdateColumnsInUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :dob, :string
  end
end
