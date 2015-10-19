class RemoveContactIdFromGroup < ActiveRecord::Migration
  def change
    remove_column :groups, :contact_id
  end
end
