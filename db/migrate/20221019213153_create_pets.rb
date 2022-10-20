class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :race
      t.string :age
      t.string :weight
      t.string :height
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
