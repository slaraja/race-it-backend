class AddStateToRaces < ActiveRecord::Migration[6.1]
  def change
    add_column :races, :state, :string
  end
end
