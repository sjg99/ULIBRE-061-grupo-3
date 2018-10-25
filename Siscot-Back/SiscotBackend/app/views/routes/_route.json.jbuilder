json.extract! route, :id, :start, :end, :created_at, :updated_at
json.url route_url(route, format: :json)
