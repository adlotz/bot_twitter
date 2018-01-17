require 'twitter'

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "key"
  config.consumer_secret     = "key"
  config.access_token        = "token"
  config.access_token_secret = "token"
end


# ligne qui permet de tweeter
client.update('Bonjour monde')
