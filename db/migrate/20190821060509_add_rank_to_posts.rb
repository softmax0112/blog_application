class AddRankToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :rank, :integer, default: 5
  end
end
