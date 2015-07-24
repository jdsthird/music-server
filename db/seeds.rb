Artist.destroy_all
Album.destroy_all
Track.destroy_all
Listing.destroy_all
Playlist.destroy_all


hayden_quartet = Artist.create!(name: "Hayden Quartet")
bill_murray = Artist.create!(name: "Billy Murray")
ergo_phizmiz = Artist.create!(name: "Ergo Phizmiz")
jack_johnson = Artist.create!(name: "Jack Johnson")




classical_comedy = Album.create!(name: "Classical Comedy", artist: hayden_quartet)
flute = Album.create!(name: "The Drunken Flute", artist: ergo_phizmiz)
lost_sounds = Album.create!(name: "Lost Sounds", artist: jack_johnson)




light = Track.create!(name: "By the Light of the Silvry Moon", album: classical_comedy, file_location: "../music/Billy_Murray_and_Haydn_Quartet_-_By_The_Light_of_The_Silvry_Moon.mp3", filetype: "mp3", guest_artist: bill_murray)
papageno = Track.create!(name: "Papageno Drunk", album: flute, file_location: "../music/Ergo_Phizmiz_-_01_-_Papageno_Drunk.mp3", filetype: "mp3")
story = Track.create!(name: "My Own Story of the Big Fight at Reno Nevada July 4, 1910", album: lost_sounds, file_location: "../music/Jack_Johnson_-_My_Own_Story_of_the_Big_Fight_at_Reno_Nevada_July_4_1910.mp3", filetype: "mp3")