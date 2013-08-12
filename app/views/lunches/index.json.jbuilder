json.array!(@lunches) do |lunch|
  json.extract! lunch, :date
  json.url lunch_url(lunch, format: :json)
end
