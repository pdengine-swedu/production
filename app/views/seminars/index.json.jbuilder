json.array!(@seminars) do |seminar|
  json.extract! seminar, :description, :title
  json.url seminar_url(seminar, format: :json)
end
