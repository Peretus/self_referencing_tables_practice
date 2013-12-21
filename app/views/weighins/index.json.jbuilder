json.array!(@weighins) do |weighin|
  json.extract! weighin, :id
  json.url weighin_url(weighin, format: :json)
end
