# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = ["70s Punk", "Old-School Hip Hop", "90s Alternative", "Name that Song!"]

categories.each do |category|
  Deck.create!(category: category)
end

# 70s Deck

punk_cards = [
  { question: "Johnny Rotten led this band, widely considered as one of the most influential punk bands of all time.",
  answer: "Sex Pistols", deck_id: 1},

  { question: "Rock the:",
  answer: "Casbah", deck_id: 1},

  { question: "In the mid 1970s, the 'Punk Rock' genre started its development, gaining wide popularity in the US, the UK, and...",
  answer: "Australia", deck_id: 1},

  { question: "What is the catchy first line of The Ramones' 'Blitzkrieg Bop'?",
  answer: "Hey ho let's go", deck_id: 1},

  { question: "What is the 'jiggly' first name of the Dead Kennedys' lead singer?",
  answer: "Jello", deck_id: 1}
]

# Old-School Hip Hop

hip_hop_cards = [
  { question: "Got the time?  Check this old-school rapper's necklace!" ,
  answer: "Flava Flav" , deck_id: 2},

  { question: "The song 'Regulators' was performed by Nate Dogg and:" ,
  answer: "Warren G" , deck_id: 2},

  { question: "The original album version of this Sugarhill Gang hit clocks in at over 14 minutes." ,
  answer: "Rapper's Delight" , deck_id: 2},

  { question: "This NWA track inspired a 2015 film of the same name." ,
  answer: "Straight Outta Compton" , deck_id: 2},

  { question: "In Naughty By Nature's 'O.P.P.', what does O.P.P. stand for?" ,
  answer: "other people's property" , deck_id: 2}
  # remember to downcase this one!
]


# 90s Alternative

alt_cards = [
    { question: "I'll give you a lyric, and you give me the song!  'I ain't got no crystal ball, I had a million dollars but I'd, I'd spend it all'" ,
  answer: "Santeria" , deck_id: 3},

  { question: "What 90s group featured the two lead singers Chris Cornell and Eddie Vedder?" ,
  answer: "Temple of the Dog" , deck_id: 3},

  { question: "What city is considered the birthplace of grunge rock?" ,
  answer: "Seattle" , deck_id: 3},

  { question: "Name Nirvana's follow-up to their game-changing 'Nevermind' album." ,
  answer: "In Utero" , deck_id: 3},

  { question: "This band had a hit named 'Zombie' and also goes well with Thanksgiving dinner." ,
  answer: "Cranberries" , deck_id: 3}
]

lyric_cards = [
   { question: "Might sound crazy, what I'm 'bout to say...",
  answer: "Happy", deck_id: 4},

  { question: "My mind's telling me no! But my body...my body's telling me yes...",
  answer: "Bump n Grind", deck_id: 4},

  { question: "Hey, I just met you, and this is crazy, so here's my number...",
  answer: "Call me Maybe", deck_id: 4},

  { question: "And so you're back...from outer space, I just walked in to find you here with that sad look upon your face",
  answer: "I Will Survive", deck_id: 4},

  { question: "He's just a poor boy from a poor family...",
  answer: "Bohemian Rhapsody", deck_id: 4},

  { question: "Bananas...B-A-N-A-N-A-S!",
  answer: "Hollaback Girl", deck_id: 4},

  { question: "We're no strangers to love...you know the rules, and so do I...",
  answer: "Never Gonna Give You Up", deck_id: 4},

  { question: "She was looking kinda dumb with her finger on her thumb and the shape of an 'L' on her forehead...",
  answer: "All Star", deck_id: 4},

  { question: "You used to call me on my cellphone...",
  answer: "Hotline Bling", deck_id: 4},

  { question: "All aboard, ha ha ha ha ha ha...I I I I I I I ...",
  answer: "Crazy Train", deck_id: 4}

]



Card.create!(punk_cards)
Card.create!(hip_hop_cards)
Card.create(alt_cards)
Card.create(lyric_cards)
