class Artist < ActiveRecord::Base
  has_many :songs

  def artist_name=(artist)
    self.artist = Artist.find_or_create_by(name: artist[:name])
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end
end
