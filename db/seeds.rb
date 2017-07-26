require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'

Trainer.create(name: "Ash", level: rand(50), img_url: 'https://vignette2.wikia.nocookie.net/pokemon/images/7/7a/Hoennash.png/revision/latest?cb=20110507193011')
Trainer.create(name: "Misty", level: rand(50), img_url: 'https://vignette3.wikia.nocookie.net/loveinterest/images/f/f0/Misty.png/revision/latest?cb=20140807145614')
Trainer.create(name: 'Brock', level: rand(50), img_url: 'https://cdn.bulbagarden.net/upload/thumb/2/21/Brock_DP_Anime_art.png/150px-Brock_DP_Anime_art.png')
Trainer.create(name: 'James', level: rand(50), img_url: 'https://cdn.bulbagarden.net/upload/thumb/7/71/SugimoriJames.png/180px-SugimoriJames.png')

Pokemon.destroy_all
Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg", trainer_id:3)
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg", trainer_id:2)
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg", trainer_id:1)
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg", trainer_id:2)
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg", trainer_id:3)
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg", trainer_id:3)
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg", trainer_id: 4)
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg", trainer_id: 4)

# Trainer.create(name: "Ash", level: rand(50), img_url: 'https://vignette2.wikia.nocookie.net/pokemon/images/7/7a/Hoennash.png/revision/latest?cb=20110507193011')
# Trainer.create(name: "Misty", level: rand(50), img_url: 'https://vignette3.wikia.nocookie.net/loveinterest/images/f/f0/Misty.png/revision/latest?cb=20140807145614')
# Trainer.create(name: 'Brock', level: rand(50), img_url: 'https://cdn.bulbagarden.net/upload/thumb/2/21/Brock_DP_Anime_art.png/150px-Brock_DP_Anime_art.png')
# Trainer.create(name: 'James', level: rand(50), img_url: 'https://cdn.bulbagarden.net/upload/thumb/7/71/SugimoriJames.png/180px-SugimoriJames.png')
