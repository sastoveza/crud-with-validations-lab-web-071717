class Song < ActiveRecord::Base
	validates :title, presence: true
	validates :title, :uniqueness => {:scope => [:artist_name, :release_year]}
	validates :release_year, :if => :released?, inclusion: {in: 1..Date.today.year}
	validates :artist_name, presence: true
end
