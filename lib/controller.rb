


class ApplicationController < Sinatra::Base
# ^^^créé une classe ApplicationController qui hérite (<) de la classe Sinatra::Base
  #L'héritage entre classe signifie que ApplicationController aura toutes les fonctionnalités que propose la classe Sinatra::Base
  get '/' do
# cela dit "si quelqu'un va sur l'adresse '/', exécute ce code !"
    erb :index
  end

  #run! if app_file == $0
#^^^^permet d'éxecuter le code de la classe sans avoir à écrire un ApplicationController.new.perform en bas du fichier.
end
