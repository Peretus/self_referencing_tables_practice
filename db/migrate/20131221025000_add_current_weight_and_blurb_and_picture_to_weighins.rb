class AddCurrentWeightAndBlurbAndPictureToWeighins < ActiveRecord::Migration
  def change
    add_column :weighins, :current_weight, :integer
    add_column :weighins, :blurb, :text
    add_column :weighins, :picture, :string
  end
end
