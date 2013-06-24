class CreateSchoolStudents < ActiveRecord::Migration
  def change
    create_table :school_students do |t|
    	t.string "name", :limit => 40, :null=>false
    	t.string "username", :limit => 40, :null=>false
    	t.string "password", :null=>false
    	t.string "standard", :null=>false
    	t.string "section", :null=>false
    	t.string "email", :null=>false
    	t.integer "mobile", :null=>true
    	

      t.timestamps
    end
  end
end
