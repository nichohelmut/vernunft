class AddRowsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :street, :string
    add_column :users, :zip, :integer
    add_column :users, :city, :string
    add_column :users, :birth_date, :date
    add_column :users, :phone, :string
    add_column :users, :admin, :boolean, default: false
    add_column :users, :support, :boolean
    add_column :users, :newsletter, :boolean
  end
end
