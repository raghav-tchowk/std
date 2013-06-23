class SchoolStudents < ActiveRecord::Base
  # attr_accessible :title, :body
 attr_accessible :name, :username, :password, :standard, :section, :email, :mobile

 validates_presence_of :name, :username, :password, :standard, :section, :email
 validates_length_of :name, :maximum=>40
 validates_uniqueness_of :username

 EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
 validates_format_of :email, :with => EMAIL_REGEX
 validates_confirmation_of :password
 validates_numericality_of :mobile, :less_than=>9999999999, :greater_than=>1000000000
end
