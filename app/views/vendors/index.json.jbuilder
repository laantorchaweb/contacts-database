json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :name, :url
  json.url vendor_url(vendor, format: :json)
end
