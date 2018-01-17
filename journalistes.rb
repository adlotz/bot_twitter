require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "key"
  config.consumer_secret     = "key"
  config.access_token        = "token"
  config.access_token_secret = "token"
end


list_of_journaliste = [
	"@jcunniet","@PaulLampon","@Aziliz31","@ssoumier","@marionsouzeau",
	"@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau",
	]



# fonction pour rajouter la liste en follower.
list_of_journaliste.each do |follows|
	follows.slice!(0)
		client.follow(follows)
end

# fonction pour rechercher les tweets poster par une liste d'utilisateurs et les liker, 
# on peux définir le nombre à liker avec la fonction .take( ) 
list_of_journaliste.each do |like|
	 like_it = client.user_timeline(like).take(1)
		client.favorite(like_it)
		
end
