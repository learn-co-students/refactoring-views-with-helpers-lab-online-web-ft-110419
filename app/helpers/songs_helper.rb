module SongsHelper
	def display_artist(song)
		if song.artist
  			return link_to(song.artist_name, artist_path(song.artist))
  	 	elsif song.artist == nil
  	 		link_to("Add Artist", edit_song_path(song))
  	 	end
  	end
end
