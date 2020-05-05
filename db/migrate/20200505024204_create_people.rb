class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :identification
      t.string :name
      t.string :lastname
      t.string :nickname
      t.string :phone

      t.timestamps
    end
  end
end
