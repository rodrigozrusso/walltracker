json.array!(@service_classes) do |service_class|
  json.extract! service_class, :name, :description, :image, :limit
  json.url service_class_url(service_class, format: :json)
end
