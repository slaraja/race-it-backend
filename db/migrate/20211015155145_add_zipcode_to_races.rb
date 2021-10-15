class AddZipcodeToRaces < ActiveRecord::Migration[6.1]
  def change
    add_column :races, :zipcode, :string
  end
end
