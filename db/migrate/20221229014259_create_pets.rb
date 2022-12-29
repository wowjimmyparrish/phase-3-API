class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.binary :image
      t.string :name
      t.string :species
      t.string :breed
      t.integer :age
    end
  end
end
