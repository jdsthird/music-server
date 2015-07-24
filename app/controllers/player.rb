get "/player" do
  erb :main
end

get "/player/artists" do
  @display_category = :artists
  @artists = Artist.all

  if request.xhr?
    erb :_artist_list, layout: false
  else
    erb :main
  end
end

get "/player/albums" do
  @display_category = :albums
  @albums = Album.all
  erb :main
end

get "/player/tracks" do
  @display_category = :tracks
  @tracks = Track.all
  erb :main
end