class CreateMonsters < ActiveRecord::Migration[7.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.text :description
      t.integer :scare_level

      t.timestamps
    end
  end
end
