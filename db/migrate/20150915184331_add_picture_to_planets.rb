class AddPictureToPlanets < ActiveRecord::Migration
  def change
    add_column :planets, :picture, :string
  end
end
