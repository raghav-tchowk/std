class CreateStudentOfSchools < ActiveRecord::Migration
  def change
    create_table :student_of_schools do |t|
    	
      t.timestamps
    end
  end
end
