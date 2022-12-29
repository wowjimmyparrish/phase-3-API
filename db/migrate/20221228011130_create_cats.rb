class CreateCats < ActiveRecord::Migration[6.1]
  def change
    create_table :cats do |t|
      t.binary :image
      t.string :name
      t.string :breed
      t.integer :age
    end
  end
end
