json.array!(@restos) do |resto|
  json.extract! resto, :name
  json.url resto_url(resto, format: :json)
end
