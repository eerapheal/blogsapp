class AddUserToCommentAndAddPostToComment < ActiveRecord::Migration[7.0]

  add_reference :comments, :author, null: false, foreign_key: { to_table: :users }
    add_reference :comments, :posts, null: false, foreign_key: true
  def change
  end
end
