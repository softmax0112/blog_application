class AddGenresToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :genres, :integer
  end
end
