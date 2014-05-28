json.array!(@categories) do |category|
  json.extract! category, :id, :nome, :tipo, :periodico, :data
  json.url category_url(category, format: :json)
end
