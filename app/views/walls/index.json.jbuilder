json.array!(@walls) do |wall|
  json.extract! wall, :name, :column_id, :service_class_id
  json.url wall_url(wall, format: :json)
end
