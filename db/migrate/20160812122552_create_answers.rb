class CreateAnswers < ActiveRecord::Migration
  def change
  	create_table :answers do |t|
  		t.string :description
  		t.references :user
  		t.references :topic

  		t.timestamps(null: false)
  	end
  end
end
