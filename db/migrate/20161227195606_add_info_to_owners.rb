class AddInfoToOwners < ActiveRecord::Migration[5.0]
  def change
    add_column :owners, :firstname, :string
    add_column :owners, :lastname, :string
    add_column :owners, :dogname, :string
    add_column :owners, :propic, :binary
  end
end
