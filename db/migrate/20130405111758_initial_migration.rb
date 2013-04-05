class InitialMigration < ActiveRecord::Migration
  def change

    create_table :jmbgs do |t|
      t.string  :jmbg_number, :null => false

      t.timestamps
    end

    add_index :jmbgs, :jmbg_number
  end
end
