require 'rubygems' 
require 'rspec'
require 'googlebooks'

class Finder 
	def self.find(term)
		books = BookCollection.new
		GoogleBooks.search(term).each do |search_result|
			book = Book.new(search_result.title, search_result.authors)
			books << book
		end
		books
	end
end

class Book
	attr_reader :title, :author
	def initialize(title, author) 
		@title = title
		@author = author
	end
end

class BookCollection < Array
end

describe Finder do 
	describe "searching for terms" do
		result = Finder.find('The Ruby Way')
		it "should return a collection of books" do 
			#result = Finder.find('The Ruby Way')
			result.should be_a BookCollection
		end
		
		it "should return a book titled 'The Ruby Way'" do
			#result = Finder.find('The Ruby Way')
			result.first.title.should == 'The Ruby Way'
		end

		it "should return a book authored by 'Hal Fulton'" do
			#result = Finder.find('The Ruby Way')
			result.first.author.should == 'Hal Edwin Fulton'
		end
	end
end
		
