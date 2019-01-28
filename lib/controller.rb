require 'gossip'
require 'csv'

class ApplicationController < Sinatra::Base
# ^^^créé une classe ApplicationController qui hérite (<) de la classe Sinatra::Base
  #L'héritage entre classe signifie que ApplicationController aura toutes les fonctionnalités que propose la classe Sinatra::Base
  get '/' do
# cela dit "si quelqu'un va sur l'adresse '/', exécute ce code !"
    erb :index, locals: {gossip: Gossip.all}
  end
get '/gossip/new/' do

  erb :new_gossip
end

post '/gossip/new/' do
  Gossip.new("#{params['gossip_author']}", "#{params['gossip_content']}").save
  redirect '/'
end



  #run! if app_file == $0
#^^^^permet d'éxecuter le code de la classe sans avoir à écrire un ApplicationController.new.perform en bas du fichier.
end
