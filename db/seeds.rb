# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Team.destroy_all
benfica = Team.create(name: 'Benfica', city: 'Lisbon', number_fans: 6000000)
Team.create(name: 'Sporting', city: 'Lisbon', number_fans: 60)
Team.create(name: 'Porto', city: 'oPorto', number_fans: 10)

Player.create(team: benfica,
              name: 'Messi',
              position: 'Forward',
              value: 60000000,
              photo_url: 'https://www.gstatic.com/tv/thumb/persons/983712/983712_v9_ba.jpg')

Player.create(team: benfica,
              name: 'Carlos',
              position: 'Left Defender',
              value: 1,
              photo_url: 'https://www.gstatic.com/tv/thumb/persons/983712/983712_v9_ba.jpg')
