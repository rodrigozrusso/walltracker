json.array!(@columns) do |column|
  json.extract! column, :name, :description, :limit
  json.url column_url(column, format: :json)
end
