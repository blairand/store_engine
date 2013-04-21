class AddRankingToProducts < ActiveRecord::Migration
  def change
    add_column :products, :rank, :integer
    add_index :products, :rank
  end
end
