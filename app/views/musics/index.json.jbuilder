json.array!(@musics) do |music|
  json.extract! music, :id, :name, :link, :artist_id
  json.url music_url(music, format: :json)
end
