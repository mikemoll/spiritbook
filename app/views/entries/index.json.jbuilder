json.array!(@entries) do |entry|
  json.extract! entry, :id, :title, :entry, :user_id
  json.url entry_url(entry, format: :json)
end
