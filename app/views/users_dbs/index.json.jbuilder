json.array!(@users_dbs) do |users_db|
  json.extract! users_db, :id, :username, :email
  json.url users_db_url(users_db, format: :json)
end
