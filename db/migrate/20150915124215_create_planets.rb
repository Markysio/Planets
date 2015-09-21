class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|

    	t.string :name
    	t.string :info

      t.timestamps null: false
    end
  end
end
