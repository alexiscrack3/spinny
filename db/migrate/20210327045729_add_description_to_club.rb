class AddDescriptionToClub < ActiveRecord::Migration[6.1]
  def change
    add_column :clubs, :description, :string
  end
end
