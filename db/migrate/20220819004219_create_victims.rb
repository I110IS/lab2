class CreateVictims < ActiveRecord::Migration[7.0]
  def change
    create_table :victims do |t|
      t.string :name
      t.date :birthdate

      t.timestamps
    end
  end
end
