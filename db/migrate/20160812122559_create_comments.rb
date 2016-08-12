class CreateComments < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  		t.string :description
  		t.references :user
  		t.references :topic
  		t.references :answer

  		t.timestamps(null: false)
    end
  end
end
