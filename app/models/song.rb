class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if artist_id
      artist.name
    end
  end

  def artist_name=(name)
    if artist_id
      artist.update(name: name) 
    else
      artist = Artist.find_or_create_by(name: name)
      self.artist_id = artist.id
    end
  end
end
