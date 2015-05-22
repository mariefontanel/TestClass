class CreateToto < ActiveRecord::Migration
  def change
  		create_table :totos do |t|
  			t.string :bidule
  		end
  end
end
