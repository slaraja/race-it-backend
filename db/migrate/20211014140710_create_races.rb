class CreateRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :races do |t|
      t.string :name
      t.string :date

      t.timestamps
    end
  end
end
