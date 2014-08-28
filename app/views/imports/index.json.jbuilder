json.array!(@imports) do |import|
  json.extract! import, :id, :source_filename, :notes, :count_records, :live
  json.url import_url(import, format: :json)
end
