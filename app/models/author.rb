class Author < ActiveRecord::Base
	has_and_belongs_to_many :works

	def full_name
		"#{firstname} #{lastname}"
	end
end
