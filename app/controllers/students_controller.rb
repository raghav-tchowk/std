class StudentsController < ApplicationController
	def index
		list
		render("list")
	end

	def list
		@students =SchoolStudents.all
	end	

	def show
		@student=SchoolStudents.find(params[:id])

	end

	def new
		@student =SchoolStudents.new
	end

	def create
		#instantiate new object using form params
		@student=SchoolStudents.new (params[:student])
		#save object
		if @student.save
			#If save succeed redirect_to
			flash[:notice]="Student account created.  #{@student.name}"
			redirect_to(:action=>"list")
		else
			#If save fails redisplay to fix
			render("new")
		end
	end

	def edit
		@student=SchoolStudents.find(params[:id])

	end

	def update
		#find object using form params
		@student=SchoolStudents.find(params[:id])

		#save object
		if @student.update_attributes(params[:student])
			#If update succeed redirect_to
			flash[:notice]="Student account info updated.  #{@student.name}"
			redirect_to(:action=>"show", :id=>@student.id)
		else
			#If save fails redisplay to fix
			render("edit")
		end
	end

	def delete
		@student=SchoolStudents.find(params[:id])
	end

	def destroy
		SchoolStudents.find(params[:id]).destroy
		flash[:notice]="Student a/c destroyed."
		redirect_to(:action=>"list")
	end

end
