class CreatePhotos < ActiveRecord::Migration
  def change
  	create_table :photos do |t|
  		t.string 			 :description
  		t.string			 :file_data
  		t.belongs_to 	 :album

  		t.timestamps
  	end
  end
end
