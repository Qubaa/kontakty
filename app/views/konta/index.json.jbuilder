json.array!(@konta) do |kontum|
  json.extract! kontum, :id, :firma, :osoba, :telefon, :mail
  json.url kontum_url(kontum, format: :json)
end
