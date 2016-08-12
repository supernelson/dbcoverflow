class CreateVotes < ActiveRecord::Migration
  def change
  	create_table :votes do |t|
  		t.references :user
  		t.references :topic
  		t.references :answer

  		t.timestamps(null: false)
    end
  end
end
