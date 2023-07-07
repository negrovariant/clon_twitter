json.extract! usuario, :id, :descripcion, :tweet, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
