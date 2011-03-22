class Work < ActiveRecord::Base
	has_and_belongs_to_many :authors

	validates :title, :presence => true
	validates :score, :numericality => {:greater_than_or_equal_to => 0, :less_than_or_equal_to => 10}

	def author
		Author.find(:all)	
	end

end
