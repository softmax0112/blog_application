class AddDeckIdToPost < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :deck, foreign_key: true
  end
end
