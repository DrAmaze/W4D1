# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  users  = User.create([{ username: 'Steven Talking' }, { username: 'Matthew Smith' }, { username: 'Cupckae Supcake' }])
  art = Artwork.create([{ title: 'Fun Zone', image_url: 'http://clipart-library.com/images/pTodbp8kc.jpg', artist_id: 3},
    { title: 'Spoon?', artist_id: 2, image_url: 'http://fisk.family/markdown/images_spoons/spoon1.jpg'}, {title: 'Spoon!', artist_id: 3,
      image_url: 'https://cdn2.bigcommerce.com/server5900/ew8xe/products/1651/images/9732/Neo_lite_fork__93724.1444874289.500.500.jpg?c=2'}])
  shares = ArtworkShare.create([{artwork_id: 1, viewer_id: 2}, {artwork_id: 2, viewer_id: 1}, {artwork_id: 1, viewer_id: 3},
    {artwork_id: 1, viewer_id: 1}, {artwork_id: 2, viewer_id: 3}])
