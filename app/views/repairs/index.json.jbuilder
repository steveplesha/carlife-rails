json.array!(@repairs) do |repair|
  json.extract! repair, :id, :vehicle_id, :shop, :cost, :mileage, :work, :date
  json.url repair_url(repair, format: :json)
end
