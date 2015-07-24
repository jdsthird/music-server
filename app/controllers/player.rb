get "/player" do
  erb :main
end

get "/player/artists" do
  @artists = Artist.all.order(:name)

  if request.xhr?
    erb :_artist_list, layout: false
  else
    erb :main
  end
end

get "/player/artists/:artist_id" do
  @artist = Artist.find(params[:artist_id])
  @artists_albums = @artist.albums.order(:name)

  if request.xhr?
    erb :_artist_album_list, layout: false
  else
    erb :main
  end
end

get "/player/albums" do
  @albums = Album.all

  if request.xhr?
    erb :_album_list, layout: false
  else
    erb :main
  end
end

get "/player/albums/:album_id" do
  @album = Album.find(params[:album_id])
  @artist = @album.artist
  @tracks = @album.tracks.order(:track_number)

  if request.xhr?
    erb :_album_track_list, layout: false
  else
    erb :main
  end
end

get "/player/tracks" do
  @tracks = Track.all
  if request.xhr?
    erb :_track_list, layout: false
  else
    erb :main
  end
end

get "/player/tracks/:track_id" do
  @track = Track.find(params[:track_id])
  Omxplayer.instance.open @track.file_location
end