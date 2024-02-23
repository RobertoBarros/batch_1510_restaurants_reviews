class AddChefToRestaurant < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :chef, :string
  end
end
