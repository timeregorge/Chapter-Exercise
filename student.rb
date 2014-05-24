class Peter

	def initialize
		@anme = 'Peter'
	end
	def  call
		"peter says #{hi}"
	end
	private
	def hi 
		"hi!"
	end
end




class Student
	attr_accessor :name, :grade

	def initialize(n,g)
		@name = n
		@grade = g
	end

	def better_grade_than?(student)

		grade > student.grade1


	end

	protected

	def grade1
		@grade
	end
end

joe = Student.new("joe" ,83)
bob = Student.new('bob' ,77)



puts "well done" if joe.better_grade_than?(bob)
peter = Peter.new
puts peter.call