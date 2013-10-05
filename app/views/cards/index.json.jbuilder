json.array!(@cards) do |card|
  json.extract! card, :title, :description, :acceptance_description, :priority_order, :parent_id, :status_id, :type_id, :importance_id
  json.url card_url(card, format: :json)
end
