require 'twitter'

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "key"
  config.consumer_secret     = "key"
  config.access_token        = "token"
  config.access_token_secret = "token"
end




# fonction stream pour recherche un mot en continue dans le flux d'information.
topics = ["coffee", "tea"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end
