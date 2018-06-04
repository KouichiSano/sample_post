json.extract! story, :id, :title, :genre, :created_at, :updated_at
json.url story_url(story, format: :json)
