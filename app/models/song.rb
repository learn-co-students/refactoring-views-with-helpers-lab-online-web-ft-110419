class Song < ActiveRecord::Base
  belongs_to :artist
  accepts_nested_attributes_for :artist

  def artist_name
  	if self.artist
  		self.artist.name
  	else 
  		nil
  	end
  end

  def artist_name=(name)
 	if self.artist 
  		self.artist.name = name
  		self.save
  	else 
  		artist = Artist.find_or_create_by(name: name)
  		self.artist = artist
  	end
  end
end
