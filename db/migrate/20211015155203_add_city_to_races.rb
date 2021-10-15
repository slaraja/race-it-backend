class AddCityToRaces < ActiveRecord::Migration[6.1]
  def change
    add_column :races, :city, :string
  end
end
