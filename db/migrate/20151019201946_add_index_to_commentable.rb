class AddIndexToCommentable < ActiveRecord::Migration
  def change
    add_index :comments, :commentable_id
  end
end
