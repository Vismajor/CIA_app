class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :flag
      t.integer :size
      t.string :currency
      t.integer :population
      t.string :language
      t.integer :happiness_rank

      t.timestamps null: false
    end
  end
end
