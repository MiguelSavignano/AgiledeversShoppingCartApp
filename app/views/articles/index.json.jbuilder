json.array!(@articles) do |article|
  json.extract! article, :id, :title, :image_url, :image_name
  json.url article_url(article, format: :json)
end
