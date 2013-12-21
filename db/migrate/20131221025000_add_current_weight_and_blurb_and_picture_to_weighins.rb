class AddCurrentWeightAndDescriptionAndPictureToWeighins < ActiveRecord::Migration
  def change
    add_column :weighins, :current_weight, :integer
    add_column :weighins, :description, :text
    add_column :weighins, :picture, :string
  end
end
