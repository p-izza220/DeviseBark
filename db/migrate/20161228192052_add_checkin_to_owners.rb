class AddCheckinToOwners < ActiveRecord::Migration[5.0]
  def change
    add_column :owners, :last_checkin, :datetime
  end
end
