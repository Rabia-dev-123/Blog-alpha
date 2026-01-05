class RemovePasswordFromUsers < ActiveRecord::Migration[8.1]
  def change
    remove_column :users, :password, :string
    remove_column :users, :created_at, :datetime
    remove_column :users, :updated_at, :datetime
  end
end
