json.array!(@logs) do |log|
  json.extract! log, :id, :valore, :note, :category_id
  json.url log_url(log, format: :json)
end
