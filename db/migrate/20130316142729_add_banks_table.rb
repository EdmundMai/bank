class AddBanksTable < ActiveRecord::Migration
  def change
  	create_table :banks do |t|
  	  t.string :name

  	  t.timestamps
  	end
  end
end
