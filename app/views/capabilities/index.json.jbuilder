json.array!(@capabilities) do |capability|
  json.extract! capability, :id, :name
  json.url capability_url(capability, format: :json)
end
