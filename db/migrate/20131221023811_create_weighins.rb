class CreateWeighins < ActiveRecord::Migration
  def change
    create_table :weighins do |t|
      t.integer :current_weight
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
