class CreateAppoinments < ActiveRecord::Migration[6.0]
  def change
    create_table :appoinments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.text :notes

      t.timestamps
    end
  end
end
