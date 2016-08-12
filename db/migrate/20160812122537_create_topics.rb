class CreateTopics < ActiveRecord::Migration
  def change
  	create_table :topics do |t|
  		t.string :heading
  		t.string :description
  		t.references :user

  		t.timestamps(null: false)
	end
  end
end
