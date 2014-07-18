json.array!(@musics) do |music|
  json.extract! music, :id, :title, :link, :artist_id
  json.url music_url(music, format: :json)
end
